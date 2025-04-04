BEGIN;

CREATE TABLE nor_io (
    nor TEXT PRIMARY KEY
);

Insert into nor_io (nor) values ('Ni');
Insert into nor_io (nor) values ('Hura');
Insert into nor_io (nor) values ('Gu');
Insert into nor_io (nor) values ('Zu');
Insert into nor_io (nor) values ('Zuek');
Insert into nor_io (nor) values ('Haiek');

CREATE TABLE nori_io (
    nori TEXT PRIMARY KEY
);

Insert into nori_io (nori) values ('Niri');
Insert into nori_io (nori) values ('Hari');
Insert into nori_io (nori) values ('Guri');
Insert into nori_io (nori) values ('Zuri');
Insert into nori_io (nori) values ('Zuei');
Insert into nori_io (nori) values ('Haiei');

CREATE TABLE nork_io (
    nork TEXT PRIMARY KEY
);

Insert into nork_io (nork) values ('Nik');
Insert into nork_io (nork) values ('Hark');
Insert into nork_io (nork) values ('Guk');
Insert into nork_io (nork) values ('Zuk');
Insert into nork_io (nork) values ('Zuek');
Insert into nork_io (nork) values ('Haiek');

CREATE TABLE denbora (
    denbora TEXT PRIMARY KEY
);

Insert into denbora (denbora) values ('Oraina');
Insert into denbora (denbora) values ('Iragana');
Insert into denbora (denbora) values ('Orain ahalera');
Insert into denbora (denbora) values ('Iragan ahalera');
Insert into denbora (denbora) values ('Alegiazko ahalera');
Insert into denbora (denbora) values ('Orain subjuntiboa');
Insert into denbora (denbora) values ('Iragan subjuntiboa');
Insert into denbora (denbora) values ('Conditional Présent');

create table nor (
    nor TEXT,
    denbora TEXT,
    aditz_lagunzailea TEXT,
    PRIMARY KEY (nor, denbora),
    FOREIGN KEY (nor) REFERENCES nor_io(nor),
    FOREIGN KEY (denbora) REFERENCES denbora(denbora)
);

-- Indikatiboa
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Naiz', 'Oraina');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zara', 'Oraina');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Da', 'Oraina');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Gara', 'Oraina');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zarete', 'Oraina');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Dira', 'Oraina');

Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Nintzen', 'Iragana');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zinen', 'Iragana');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Zen', 'Iragana');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Ginen', 'Iragana');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zineten', 'Iragana');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Ziren', 'Iragana');

-- Ahalera
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Naiteke', 'Orain ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zaitezke', 'Orain ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Daiteke', 'Orain ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Gaitezke', 'Orain ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zaitezkete', 'Orain ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Daitezke', 'Orain ahalera');

Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Nintekeen', 'Iragan ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zintezkeen', 'Iragan ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Zitekeen', 'Iragan ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Gintezkeen', 'Iragan ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zintezketen', 'Iragan ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Zitezkeen', 'Iragan ahalera');

Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Ninteke', 'Alegiazko ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zintezke', 'Alegiazko ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Liteke', 'Alegiazko ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Gintezke', 'Alegiazko ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zintezke', 'Alegiazko ahalera');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Litezke', 'Alegiazko ahalera');

-- Subjuntiboa
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Nadin', 'Orain subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zaitezen', 'Orain subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Dadin', 'Orain subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Gaitezen', 'Orain subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zaitezen', 'Orain subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Daitezen', 'Orain subjuntiboa');

Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Nendin', 'Iragan subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zintezen', 'Iragan subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Zedin', 'Iragan subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Gintezen', 'Iragan subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zintezten', 'Iragan subjuntiboa');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Zitezen', 'Iragan subjuntiboa');

Insert into nor (nor, aditz_lagunzailea, denbora) values ('Ni', 'Nintzateke', 'Conditional Présent');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zu', 'Zinateke', 'Conditional Présent');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Hura', 'Litzateke', 'Conditional Présent');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Gu', 'Ginateke', 'Conditional Présent');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Zuek', 'Zinatekete', 'Conditional Présent');
Insert into nor (nor, aditz_lagunzailea, denbora) values ('Haiek', 'Lirateke', 'Conditional Présent');

Create table nor_nork (
    nor TEXT,
    nork TEXT,
    denbora TEXT,
    aditz_lagunzailea TEXT,
    PRIMARY KEY (nor, nork, denbora),
    FOREIGN KEY (nor) REFERENCES nor_io(nor),
    FOREIGN KEY (nork) REFERENCES nork_io(nork),
    FOREIGN KEY (denbora) REFERENCES denbora(denbora)
);

-- Indikatiboa
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Hark', 'Nau', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Zuk', 'Nauzu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Zuek', 'Nauzue', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Haiek', 'Naute', 'Oraina');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Nik', 'Dut', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hark', 'Du', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guk', 'Dugu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuk', 'Duzu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuek', 'Duzue', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiek', 'Dute', 'Oraina');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Hark', 'Gaitu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Zuk', 'Gaituzu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Zuek', 'Gaituzue', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Haiek', 'Gaituzte', 'Oraina');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Nik', 'Zaitut', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Hark', 'Zaitu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Guk', 'Zaitugu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Haiek', 'Zaituzte', 'Oraina');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Nik', 'Zaituztet', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Hark', 'Zaituzte', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Guk', 'Zaituztegu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Haiek', 'Zaituztete', 'Oraina');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Nik', 'Ditut', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hark', 'Ditu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guk', 'Ditugu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuk', 'Dituzu', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuek', 'Dituzue', 'Oraina');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiek', 'Dituzte', 'Oraina');


Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Hark', 'Ninduen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Zuk', 'Ninduzun', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Zuek', 'Ninduzuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Ni', 'Haiek', 'Ninduten', 'Iragana');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Nik', 'Nuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hark', 'Zuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guk', 'Genuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuk', 'Zenuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuek', 'Zenuten', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiek', 'Zuten', 'Iragana');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Hark', 'Gintuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Zuk', 'Gintuzun', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Zuek', 'Gintuzuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Gu', 'Haiek', 'Gintuzten', 'Iragana');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Nik', 'Zintudan', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Hark', 'Zintuen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Guk', 'Zintugun', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zu', 'Haiek', 'Zintuzten', 'Iragana');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Nik', 'Zintuztedan', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Hark', 'Zintuzten', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Guk', 'Zintuztegun', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Zuek', 'Haiek', 'Zintuzteten', 'Iragana');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Nik', 'Nituen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hark', 'Zituen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guk', 'Genituen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuk', 'Zenituen', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuek', 'Zenituzten', 'Iragana');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiek', 'Zituzten', 'Iragana');

-- Nor nork Ahalera
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Nik', 'Dezaket', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuk', 'Dezakezu', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hark', 'Dezake', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guk', 'Dezakegu', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuek', 'Dezakezue', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiek', 'Dezakete', 'Orain ahalera');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Nik', 'Ditzaket', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuk', 'Ditzakezu', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hark', 'Ditzake', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guk', 'Ditzakegu', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuek', 'Ditzakezue', 'Orain ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiek', 'Ditzakete', 'Orain ahalera');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Nik', 'Nezakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuk', 'Zenezakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hark', 'Zezakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guk', 'Genezakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuek', 'Zenezaketen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiek', 'Zezaketen', 'Iragan ahalera');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Nik', 'Nitzakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuk', 'Zenitzakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hark', 'Zitzakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guk', 'Genitzakeen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuek', 'Zenitzaketen', 'Iragan ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiek', 'Zitzaketen', 'Iragan ahalera');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Nik', 'Nezake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuk', 'Zenezake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hark', 'Lezake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guk', 'Genezake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuek', 'Zenezakete', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiek', 'Lezakete', 'Alegiazko ahalera');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Nik', 'Nitzake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuk', 'Zenitzake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hark', 'Litzake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guk', 'Genitzake', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuek', 'Zenitzakete', 'Alegiazko ahalera');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiek', 'Litzakete', 'Alegiazko ahalera');

-- Nor Nork Subjuntiboa
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Nik', 'Dezadan', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuk', 'Dezazun', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hark', 'Dezan', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guk', 'Dezagun', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuek', 'Dezazuen', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiek', 'Dezaten', 'Orain subjuntiboa');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Nik', 'Ditzadan', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuk', 'Ditzazun', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hark', 'Ditzan', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guk', 'Ditzagun', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuek', 'Ditzazuen', 'Orain subjuntiboa');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiek', 'Ditzaten', 'Orain subjuntiboa');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Nik', 'Nuke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuk', 'Zenuke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hark', 'Luke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guk', 'Genuke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuek', 'Zenukete', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiek', 'Lukete', 'Conditional Présent');

Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Nik', 'Nituzke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuk', 'Zenituzke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hark', 'Lituzke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guk', 'Genituzke', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuek', 'Zenituzkete', 'Conditional Présent');
Insert into nor_nork (nor, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiek', 'Lituzkete', 'Conditional Présent');
Create table nor_nori (
    nor TEXT,
    nori TEXT,
    denbora TEXT,
    aditz_lagunzailea TEXT,
    PRIMARY KEY (nor, nori, denbora),
    FOREIGN KEY (nor) REFERENCES nor_io(nor),
    FOREIGN KEY (nori) REFERENCES nori_io(nori),
    FOREIGN KEY (denbora) REFERENCES denbora(denbora)
);

Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Zait', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Zaio', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Zaigu', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Zaizu', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Zaizue', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Zaie', 'Oraina');

Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Zaizkit', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Zaizkio', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Zaizkigu', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Zaizkizu', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Zaizkizue', 'Oraina');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Zaizkie', 'Oraina');

Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Zitzaidan', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Zitzaion', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Zitzaigun', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Zitzaizun', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Zitzaizuen', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Zitzaien', 'Iragana');

Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Zitzaizkidan', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Zitzaizkion', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Zitzaizkigun', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Zitzaizkizun', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Zitzaizkizuen', 'Iragana');
Insert into nor_nori (nor, nori, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Zitzaizkien', 'Iragana');


Create table nor_nori_nork (
    nor TEXT,
    nori TEXT,
    nork TEXT,
    denbora TEXT,
    aditz_lagunzailea TEXT,
    PRIMARY KEY (nor, nori, nork, denbora),
    FOREIGN KEY (nor) REFERENCES nor_io(nor),
    FOREIGN KEY (nori) REFERENCES nori_io(nori),
    FOREIGN KEY (nork) REFERENCES nork_io(nork),
    FOREIGN KEY (denbora) REFERENCES denbora(denbora)
);

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Nik', 'Diot', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Nik', 'Dizut', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zueri', 'Nik', 'Dizuet', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Nik', 'Diet', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Nik', 'Dizkiot', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Nik', 'Dizkizut', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Nik', 'Dizkizuet', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Nik', 'Dizkiet', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Hark', 'Dit', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Hark', 'Dio', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Hark', 'Digu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Hark', 'Dizu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Hark', 'Dizue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Hark', 'Die', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Hark', 'Dizkit', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Hark', 'Dizkio', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Hark', 'Dizkigu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Hark', 'Dizkizu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Hark', 'Dizkizue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Hark', 'Dizkie', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Guk', 'Diogu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Guk', 'Dizugu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Guk', 'Dizuegu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Guk', 'Diegu', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Guk', 'Dizkiogu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Guk', 'Dizkizugu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Guk', 'Dizkizuegu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Guk', 'Dizkiegu', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Zuk', 'Didazu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Zuk', 'Diozu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Zuk', 'Diguzu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Zuk', 'Diezu', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Zuk', 'Dizkidazu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Zuk', 'Dizkiozu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Zuk', 'Dizkiguzu', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Zuk', 'Dizkiezu', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Zuek', 'Didazue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Zuek', 'Diozue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Zuek', 'Diguzue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Zuek', 'Diezue', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Zuek', 'Dizkidazue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Zuek', 'Dizkiozue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Zuek', 'Dizkiguzue', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Zuek', 'Dizkiezue', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Haiek', 'Didate', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Haiek', 'Diote', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Haiek', 'Digute', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Haiek', 'Dizute', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Haiek', 'Dizuete', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Haiek', 'Diete', 'Oraina');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Haiek', 'Dizkidate', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Haiek', 'Dizkiote', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Haiek', 'Dizkgute', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Haiek', 'Dizkizute', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Haiek', 'Dizkizuete', 'Oraina');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Haiek', 'Dizkiete', 'Oraina');


-- nor nori nork iraganean
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Nik', 'Nion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Nik', 'Nizun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zueri', 'Nik', 'Nizuen', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Nik', 'Nien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Nik', 'Nizkion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Nik', 'Nizkizun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zueri', 'Nik', 'Nizkizuen', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Nik', 'Nizkien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Hark', 'Zidan', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Hark', 'Zion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Hark', 'Zigun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Hark', 'Zizun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Hark', 'Zizuen', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Hark', 'Zien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Hark', 'Zizkidan', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Hark', 'Zizkion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Hark', 'Zizkigun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Hark', 'Zizkizun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Hark', 'Zizkizuen', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Hark', 'Zizkien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Guk', 'Genion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Guk', 'Genizun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Guk', 'Genizuen', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Guk', 'Genien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Guk', 'Genizkion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Guk', 'Genizkizun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Guk', 'Genizkizuen', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Guk', 'Genizkien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Zuk', 'Zenidan', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Zuk', 'Zenion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Zuk', 'Zenidun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Zuk', 'Zenien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Zuk', 'Zenizkidan', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Zuk', 'Zenizkion', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Zuk', 'Zenizkidun', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Zuk', 'Zenizkien', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Zuek', 'Zenidaten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Zuek', 'Zenioten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Zuek', 'Zeniguten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Zuek', 'Zenieten', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Zuek', 'Zenizkidaten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Zuek', 'Zenizkioten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Zuek', 'Zenizkiguten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Zuek', 'Zenizkieten', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Niri', 'Haiek', 'Zidaten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Hari', 'Haiek', 'Zioten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Guri', 'Haiek', 'Ziguten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuri', 'Haiek', 'Zizuten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Zuei', 'Haiek', 'Zizueten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Hura', 'Haiei', 'Haiek', 'Zieten', 'Iragana');

Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Niri', 'Haiek', 'Zizkidaten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Hari', 'Haiek', 'Zizkioten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Guri', 'Haiek', 'Zizkiguten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuri', 'Haiek', 'Zizkizuten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Zuei', 'Haiek', 'Zizkizueten', 'Iragana');
Insert into nor_nori_nork (nor, nori, nork, aditz_lagunzailea, denbora) values ('Haiek', 'Haiei', 'Haiek', 'Zizkieten', 'Iragana');


Create view aditz_lagunak(forme, nor, nori, nork, aditz_laguntzilea, denbora) as 
select 'nor_nork', nor, '', nork, aditz_lagunzailea, denbora from nor_nork
union
select 'nor_nori', nor, nori, '', aditz_lagunzailea, denbora from nor_nori
union
select 'nor_nori_nork', nor, nori, nork, aditz_lagunzailea, denbora from nor_nori_nork;


COMMIT;
