const fs = require("fs");
const sqlite3 = require("sqlite3").verbose();

// Restore SQL dump to SQLite database
function restoreSqlDump(sqlDumpFile, dbFile) {
  return new Promise((resolve, reject) => {
    const db = new sqlite3.Database(dbFile, (err) => {
      if (err) return reject(`Error opening database: ${err.message}`);
    });

    fs.readFile(sqlDumpFile, "utf8", (err, sql) => {
      if (err) return reject(`Error reading SQL dump: ${err.message}`);

      db.exec(sql, (err) => {
        if (err) {
          db.close();
          return reject(`Error executing SQL dump: ${err.message}`);
        }
        db.close((closeErr) => {
          if (closeErr)
            return reject(`Error closing database: ${closeErr.message}`);
          resolve();
        });
      });
    });
  });
}

// Export SQLite data to JSON file
function exportToJson(dbFile, outputFile) {
  return new Promise((resolve, reject) => {
    const db = new sqlite3.Database(dbFile, (err) => {
      if (err) return reject(`Error opening database: ${err.message}`);
    });

    db.all(
      "SELECT name FROM sqlite_master WHERE type='table'",
      (err, tables) => {
        if (err) {
          db.close();
          return reject(`Error fetching table names: ${err.message}`);
        }

        const dbData = {};
        let tablesProcessed = 0;

        if (tables.length === 0) {
          db.close();
          return resolve(`No tables found in the database.`);
        }

        tables.forEach(({ name }) => {
          db.all(`SELECT * FROM ${name}`, (err, rows) => {
            if (err) {
              db.close();
              return reject(
                `Error fetching data from table ${name}: ${err.message}`,
              );
            }

            dbData[name] = rows;
            tablesProcessed++;

            if (tablesProcessed === tables.length) {
              fs.writeFile(
                outputFile,
                JSON.stringify(dbData, null, 4),
                (err) => {
                  db.close();
                  if (err)
                    return reject(`Error writing JSON file: ${err.message}`);
                  resolve(`Data exported to JSON file: ${outputFile}`);
                },
              );
            }
          });
        });
      },
    );
  });
}

// Main execution
(async () => {
  const sqlDumpFile = "data/gramatika.sql"; // Path to your SQL dump
  const dbFile = "data/database.sqlite"; // Path to your SQLite database file
  const outputFile = "src/aditz_lagunak.json"; // Path to your JSON output file

  try {
    console.log("Restoring SQL dump...");
    await restoreSqlDump(sqlDumpFile, dbFile);
    console.log("SQL dump restored successfully.");

    console.log("Exporting data to JSON...");
    const result = await exportToJson(dbFile, outputFile);
    console.log(result);

    // Delete the database file
    fs.unlink(dbFile, (err) => {
      if (err) {
        console.error(`Error deleting database file: ${err.message}`);
      } else {
        console.log(`Database file ${dbFile} deleted.`);
      }
    });
  } catch (error) {
    console.error(`Error: ${error}`);
  }
})();
