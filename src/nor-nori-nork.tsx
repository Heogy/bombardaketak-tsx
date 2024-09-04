import React, { useState, useEffect } from "react";
import aditzLaguntzaileak from './aditz_lagunak.json';

console.log(aditzLaguntzaileak)
aditzLaguntzaileak.forEach((item) => console.log(item))

const NorNoriNork: React.FC = () => {
  const [nor, setNor] = useState<string>("Haiek");
  const [nori, setNori] = useState<string>("Guri");
  const [nork, setNork] = useState<string>("Zuek");
  const [denbora, setDenbora] = useState<string>("Orainaldia");
  const [aditzLaguntzailea, setAditzLaguntzailea] = useState<any | null>(null);

  useEffect(() => {
    console.log(`try to find ${nor} ${nori} ${nork} ${denbora}`)
    const item = aditzLaguntzaileak.find(
      (item: any) =>
        item.nor === nor &&
        item.nori === nori &&
        item.nork === nork &&
        item.denbora === denbora
    );
    console.log(item)
    setAditzLaguntzailea(item || null);
  }, [nor, nori, nork, denbora]);

  const norList: string[] = ['Ni', 'Zu', 'Hura', 'Gu', 'Zuek', 'Haiek'];
  const noriList: string[] = ['Niri', 'Zuri', 'Hari', 'Guri', 'Zuei', 'Haiei', ''];
  const norkList: string[] = ['Nik', 'Zuk', 'Hark', 'Guk', 'Zuek', 'Haiek', ''];
  const denboraList: string[] = ['Orainaldia', 'Lehenaldia'];
  // Inline styles for the component
  const styles = {
    outerContainer: {
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center',
      minHeight: '100vh',
      backgroundColor: '#f0f0f0',
    },
    container: {
      maxWidth: '400px',
      margin: '0 auto',
      padding: '20px',
      borderRadius: '8px',
      boxShadow: '0 4px 8px rgba(0, 0, 0, 0.1)',
      backgroundColor: '#f9f9f9',
    },
    label: {
      display: 'block',
      marginBottom: '5px',
      fontWeight: 'bold',
      color: '#333',
    },
    select: {
      width: '100%',
      padding: '8px',
      marginBottom: '15px',
      borderRadius: '4px',
      border: '1px solid #ccc',
      backgroundColor: '#fff',
    },
    details: {
      marginTop: '20px',
      padding: '10px',
      borderRadius: '4px',
      backgroundColor: '#e0f7fa',
      color: '#00796b',
    },
    placeholder: {
      color: '#888',
    },
  };

  return (
    <div style={styles.outerContainer}>
      <div style={styles.container}>
        <div>
          <label style={styles.label}>Nor: </label>
          <select value={nor} onChange={(e) => setNor(e.target.value)} style={styles.select}>
            <option value="" disabled style={styles.placeholder}>Nor</option>
            {norList.map((item, index) => (
              <option key={index} value={item}>{item}</option>
            ))}
          </select>
        </div>

        <div>
          <label style={styles.label}>Nori: </label>
          <select value={nori} onChange={(e) => setNori(e.target.value)} style={styles.select}>
            <option value="" disabled style={styles.placeholder}>Nori</option>
            {noriList.map((item, index) => (
              <option key={index} value={item}>{item}</option>
            ))}
          </select>
        </div>

        <div>
          <label style={styles.label}>Nork: </label>
          <select value={nork} onChange={(e) => setNork(e.target.value)} style={styles.select}>
            <option value="" disabled style={styles.placeholder}>Nork</option>
            {norkList.map((item, index) => (
              <option key={index} value={item}>{item}</option>
            ))}
          </select>
        </div>

        <div>
          <label style={styles.label}>Denbora: </label>
          <select value={denbora} onChange={(e) => setDenbora(e.target.value)} style={styles.select}>
            <option value="" disabled style={styles.placeholder}>Denbora</option>
            {denboraList.map((item, index) => (
              <option key={index} value={item}>{item}</option>
            ))}
          </select>
        </div>

        <div style={styles.details}>
          <h3>Aditz laguntzailea :</h3>
          {aditzLaguntzailea ?
            <p style={styles.placeholder}>{aditzLaguntzailea.aditz_laguntzilea}</p>
            :
            <p>ez da</p>
          }
        </div>
      </div>
    </div>
  );
};

export default NorNoriNork;

