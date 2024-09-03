import React, { useState, useEffect } from "react";
import aditzLaguntzaileak from './aditz_lagunak.json';

console.log(aditzLaguntzaileak)
aditzLaguntzaileak.forEach((item) => console.log(item))

// Define the type for each item in your JSON data
interface DataItem {
  category1: string;
  category2: string;
  category3: string;
  details: string;
}



const NorNoriNork: React.FC = () => {
  const [nor, setNor] = useState<string>("Haiek");
  const [nori, setNori] = useState<string>("Guri");
  const [nork, setNork] = useState<string>("Zuek");
  const [aditzLaguntzailea, setAditzLaguntzailea] = useState<any | null>(null);

  useEffect(() => {
    console.log(`try to find ${nor} ${nori} ${nork}`)
    const item = aditzLaguntzaileak.find(
      (item: any) =>
        item.nor === nor &&
        item.nori === nori &&
        item.nork === nork &&
        item.denbora === 'Orainaldia'
    );
    console.log(item)
    setAditzLaguntzailea(item || null);
  }, [nor, nori, nork]);

  const norList: string[] = ['Ni', 'Zu', 'Hura', 'Gu', 'Zuek', 'Haiek'];
  const noriList: string[] = ['Niri', 'Zuri', 'Hari', 'Guri', 'Zuei', 'Haiei', ''];
  const norkList: string[] = ['Nik', 'Zuk', 'Hark', 'Guk', 'Zuek', 'Haiek', ''];

  return (
    <div>
      <div>
        <label>Nor: </label>
        <select value={nor} onChange={(e) => setNor(e.target.value)}>
          <option value="" disabled>Nor</option>
          {norList.map((item, index) => (
            <option key={index} value={item}>{item}</option>
          ))}
        </select>
      </div>

      <div>
        <label>Nori: </label>
        <select value={nori} onChange={(e) => setNori(e.target.value)}>
          <option value="" disabled>Nori</option>
          {noriList.map((item, index) => (
            <option key={index} value={item}>{item}</option>
          ))}
        </select>
      </div>

      <div>
        <label>Nork: </label>
        <select value={nork} onChange={(e) => setNork(e.target.value)}>
          <option value="" disabled>Nork</option>
          {norkList.map((item, index) => (
            <option key={index} value={item}>{item}</option>
          ))}
        </select>
      </div>

      <div>
        <h3>Aditz laguntzailea :</h3>
        {aditzLaguntzailea ?
          <p>{aditzLaguntzailea.aditz_laguntzilea}</p>
          :
          <p>'ez da'</p>
        }
      </div>
    </div>
  );
};

export default NorNoriNork;

