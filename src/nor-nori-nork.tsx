import React, { useState, useEffect } from "react";
import aditzLaguntzaileak from './aditz_lagunak.json';
import SearchableInput from "./SearchableInput";
import './style.css';


interface struc {
  nor: string,
  nori?: string,
  nork?: string;
  denbora: string,
  aditz_lagunzailea: string,
  forma: string
}



const all: struc[] = [
  ...(aditzLaguntzaileak.nor.map(a => { return { ...a, forma: 'nor' } })),
  ...(aditzLaguntzaileak.nor_nori.map(a => { return { ...a, forma: 'nor_nori' } })),
  ...(aditzLaguntzaileak.nor_nork.map(a => { return { ...a, forma: 'nor_nork' } })),
  ...(aditzLaguntzaileak.nor_nori_nork.map(a => { return { ...a, forma: 'nor_nori_nork' } })),

]

const NorNoriNork: React.FC = () => {
  const [nor, setNor] = useState<string>("Haiek");
  const [nori, setNori] = useState<string>("Guri");
  const [nork, setNork] = useState<string>("Zuek");
  const [denbora, setDenbora] = useState<string>("Oraina");
  const [forma, setForma] = useState<string>("nor_nori_nork");
  const [al, setAL] = useState<string>("");

  useEffect(() => {
    searchAL();


  }, [forma, denbora, nor, nori, nork])


  const searchAL = () => {
    console.log(`try to find ${nor} ${nori} ${nork} ${denbora} ${forma}`)
    var item: string | undefined;
    if (forma === "nor") {
      item = aditzLaguntzaileak.nor.find(
        (item: any) =>
          item.nor === nor &&
          item.denbora === denbora

      )?.aditz_lagunzailea;
    } else if (forma === "nor_nori") {
      item = aditzLaguntzaileak.nor_nori.find(
        (item: any) =>
          item.nor === nor &&
          item.nori === nori &&
          item.denbora === denbora

      )?.aditz_lagunzailea;
    } else if (forma === "nor_nork") {
      item = aditzLaguntzaileak.nor_nork.find(
        (item: any) =>
          item.nor === nor &&
          item.nork === nork &&
          item.denbora === denbora

      )?.aditz_lagunzailea;
    } else if (forma === "nor_nori_nork") {
      item = aditzLaguntzaileak.nor_nori_nork.find(
        (item: any) =>
          item.nor === nor &&
          item.nork === nork &&
          item.nori === nori &&
          item.denbora === denbora

      )?.aditz_lagunzailea;
    }
    console.log(item)
    if (item !== undefined) {
      setAL(item)
    } else {
      setAL("EZ DA !!!")
    }
  };


  useEffect(() => {
    console.log('ping pong ?');

    const item = all.find(a => a.aditz_lagunzailea.toLowerCase() === al.toLowerCase());
    if (item !== undefined) {
      setForma(item.forma);
      setDenbora(item.denbora);
      setNor(item.nor);
      if (item.nori !== undefined)
        setNori(item.nori);
      if (item.nork !== undefined)
        setNork(item.nork);
    }
  }, [al])

  const norList: string[] = aditzLaguntzaileak.nor_io.map(a=>a.nor)
  const noriList: string[] = aditzLaguntzaileak.nori_io.map(a=>a.nori)
  const norkList: string[] = aditzLaguntzaileak.nork_io.map(a=>a.nork)
  const denboraList: string[] = aditzLaguntzaileak.denbora.map(a=>a.denbora);
  const formaList: string[] = ['nor', 'nor_nori', 'nor_nork', 'nor_nori_nork'];



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
    detailsError: {
      marginTop: '20px',
      padding: '10px',
      borderRadius: '4px',
      backgroundColor: '#e0f7fa',
      color: 'red',
    },
    placeholder: {
      color: '#888',
    },
  };

  return (
    <div style={styles.outerContainer} >
      <div style={styles.container} id="container">
        <div style={styles.details} id="al">
          <label >Aditz laguntzailea: </label>
          <SearchableInput options={all.map(a => a.aditz_lagunzailea).sort((a:string, b:string)=> a.localeCompare(b))} placeholder="aditz laguntzailea" setAL={setAL} al={al}/>
        </div>
        <div id="forma">
          <label style={styles.label}>Forma: </label>
          <select value={forma} onChange={(e) => setForma(e.target.value)} style={styles.select}>
            <option value="" disabled style={styles.placeholder}>Forma</option>
            {formaList.map((item, index) => (
              <option key={index} value={item}>{item}</option>
            ))}
          </select>
        </div>

        <div id="denbora">
          <label style={styles.label}>Denbora: </label>
          <select value={denbora} onChange={(e) => setDenbora(e.target.value)} style={styles.select}>
            <option value="" disabled style={styles.placeholder}>Denbora</option>
            {denboraList.map((item, index) => (
              <option key={index} value={item}>{item}</option>
            ))}
          </select>
        </div>

        <div id="nor">
          <label style={styles.label}>Nor: </label>
          <select value={nor} onChange={(e) => setNor(e.target.value)} style={styles.select}>
            <option value="" disabled style={styles.placeholder}>Nor</option>
            {norList.map((item, index) => (
              <option key={index} value={item}>{item}</option>
            ))}
          </select>
        </div>
        {
          ['nor_nori', 'nor_nori_nork'].includes(forma) ?
            <div id="nori">
              <label style={styles.label}>Nori: </label>
              <select value={nori} onChange={(e) => setNori(e.target.value)} style={styles.select}>
                <option value="" disabled style={styles.placeholder}>Nori</option>
                {noriList.map((item, index) => (
                  <option key={index} value={item}>{item}</option>
                ))}
              </select>
            </div>
            : null}
        {
          ['nor_nork', 'nor_nori_nork'].includes(forma) ?
            <div id="nork">
              <label style={styles.label}>Nork: </label>
              <select value={nork} onChange={(e) => setNork(e.target.value)} style={styles.select}>
                <option value="" disabled style={styles.placeholder}>Nork</option>
                {norkList.map((item, index) => (
                  <option key={index} value={item}>{item}</option>
                ))}
              </select>
            </div>
            : null}

        
      </div>
    </div>
  );
};

export default NorNoriNork;

