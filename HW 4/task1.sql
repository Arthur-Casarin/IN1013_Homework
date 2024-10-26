-- Definition Part

CREATE TABLE petPet (
  petname VARCHAR(20),
  owner VARCHAR(45),
  species VARCHAR(45),
  gender CHAR CHECK (gender IN('M', 'F')),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE,
  eventtype VARCHAR(15),
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet (petname),
  CONSTRAINT Pk_petEvent PRIMARY KEY (petname,eventdate,eventtype)
);