import React, { useState } from "react";

interface SearchableInputProps {
  options: string[];
  placeholder?: string;
  setAL: (value: string) => void;
  al: string;
}

function levenshtein(s: string, t: string) : number{
  if (s === t) {
    return 0;
  }
  var n = s.length, m = t.length;
  if (n === 0 || m === 0) {
    return n + m;
  }
  var x = 0, y, a, b, c, d, g, h, k;
  var p = new Array(n);
  for (y = 0; y < n;) {
    p[y] = ++y;
  }

  for (; (x + 3) < m; x += 4) {
    var e1 = t.charCodeAt(x);
    var e2 = t.charCodeAt(x + 1);
    var e3 = t.charCodeAt(x + 2);
    var e4 = t.charCodeAt(x + 3);
    c = x;
    b = x + 1;
    d = x + 2;
    g = x + 3;
    h = x + 4;
    for (y = 0; y < n; y++) {
      k = s.charCodeAt(y);
      a = p[y];
      if (a < c || b < c) {
        c = (a > b ? b + 1 : a + 1);
      }
      else {
        if (e1 !== k) {
          c++;
        }
      }

      if (c < b || d < b) {
        b = (c > d ? d + 1 : c + 1);
      }
      else {
        if (e2 !== k) {
          b++;
        }
      }

      if (b < d || g < d) {
        d = (b > g ? g + 1 : b + 1);
      }
      else {
        if (e3 !== k) {
          d++;
        }
      }

      if (d < g || h < g) {
        g = (d > h ? h + 1 : d + 1);
      }
      else {
        if (e4 !== k) {
          g++;
        }
      }
      p[y] = h = g;
      g = d;
      d = b;
      b = c;
      c = a;
    }
  }

  for (; x < m;) {
    var e = t.charCodeAt(x);
    c = x;
    d = ++x;
    for (y = 0; y < n; y++) {
      a = p[y];
      if (a < c || d < c) {
        d = (a > d ? d + 1 : a + 1);
      }
      else {
        if (e !== s.charCodeAt(y)) {
          d = c + 1;
        }
        else {
          d = c;
        }
      }
      p[y] = d;
      c = a;
    }
    h = d;
  }

  return h;
}
function sortByLevenshtein(searchTerm: string, array: string[]) {
  return array.sort((a: string, b: string) => {
      const distanceA = levenshtein(searchTerm.toLocaleLowerCase(), a.toLocaleLowerCase());
      const distanceB = levenshtein(searchTerm.toLocaleLowerCase(), b.toLocaleLowerCase());
      return distanceA - distanceB; // Ascending order
  });
}
const SearchableInput: React.FC<SearchableInputProps> = (props: SearchableInputProps) => {
  const [filteredOptions, setFilteredOptions] = useState<string[]>(props.options); // Filtered list
  const [showList, setShowList] = useState<boolean>(false); // Toggle list visibility

  // Handle input change and filter the options
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = e.target.value;
    props.setAL(value);
    const sorted = sortByLevenshtein(value, props.options)

    setFilteredOptions(sorted);
    setShowList(true); // Show the list while searching
  };

  // Handle selecting an option
  const handleOptionSelect = (option: string) => {
    setShowList(false); // Hide the list after selection
    props.setAL(option)
  };

  // Handle blur (click outside) to close the dropdown
  const handleBlur = () => {
    setTimeout(() => setShowList(false), 100); // Delay to allow option click
  };
  // Handle Enter key to validate selection
  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    if (e.key === "Enter" && filteredOptions.length > 0) {
      handleOptionSelect(filteredOptions[0]); // Select the first filtered option
    }
  };
  return (
    <div style={styles.container}>
      <input
        type="text"
        value={props.al}
        onChange={handleInputChange}
        onFocus={() => setShowList(true)} // Show the list when input is focused
        onBlur={handleBlur} // Handle closing the list on blur
        onKeyDown={handleKeyDown} // Handle Enter key
        placeholder={props.placeholder}
        style={styles.input}
      />
      {showList && (
        <ul style={styles.list}>
          {filteredOptions.length > 0 ? (
            filteredOptions.map((option, index) => (
              <li
                key={index}
                onClick={() => handleOptionSelect(option)}
                style={styles.listItem}
              >
                {option}
              </li>
            ))
          ) : (
            <li style={styles.noOption}>No results found</li>
          )}
        </ul>
      )}
    </div>
  );
};

// Inline styles for the component
const styles = {
  container: {
    position: "relative" as const,
    maxWidth: "300px",
    margin: "0 auto",
  },
  input: {
    width: "100%",
    padding: "10px",
    border: "1px solid #ccc",
    borderRadius: "4px",
    fontSize: "16px",
    boxSizing: "border-box" as const,
  },
  list: {
    position: "absolute" as const,
    top: "100%",
    left: 0,
    right: 0,
    maxHeight: "150px",
    overflowY: "auto" as const,
    margin: 0,
    padding: 0,
    listStyle: "none" as const,
    border: "1px solid #ccc",
    borderRadius: "4px",
    backgroundColor: "#fff",
    zIndex: 1,
  },
  listItem: {
    padding: "10px",
    cursor: "pointer",
    borderBottom: "1px solid #ddd",
    backgroundColor: "#fff",
  },
  noOption: {
    padding: "10px",
    color: "#888",
  },
  selected: {
    marginTop: "10px",
    fontSize: "14px",
    color: "#333",
  },
};

export default SearchableInput;




