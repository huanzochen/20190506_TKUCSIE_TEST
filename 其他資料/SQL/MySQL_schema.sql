CREATE TABLE Member
( mId         CHAR(8)       NOT NULL,
  pId         CHAR(10)    NOT NULL,
  name        VARCHAR(8)     NOT NULL,
  birthday    DATE,
  phone       VARCHAR(10),
  address     VARCHAR(40),
  email       VARCHAR(20),
  introducer  CHAR(8),
  PRIMARY  KEY (mId),
  UNIQUE   (pId),
  FOREIGN KEY (introducer) 
  REFERENCES Member(mId) ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE Transaction
(tNo         CHAR(5)    NOT NULL,
 transMid    CHAR(8)       NOT NULL,
 transTime   DATETIME     NOT NULL,
 method      VARCHAR(5)     NOT NULL,
 bankId      VARCHAR(14),    
 bankName    VARCHAR(20),
 cardType    VARCHAR(10),
 cardId      VARCHAR(10),
 dueDate     DATE,
 PRIMARY KEY (tNo),
 FOREIGN KEY (transMid) REFERENCES Member(mId)
 )ENGINE=INNODB;

CREATE TABLE Product
(pNo           CHAR(6)     NOT NULL,
 pName         VARCHAR(30),
 unitPrice     DECIMAL(10,2),
 category       VARCHAR(20),
 PRIMARY KEY(pNo),
 CONSTRAINT UnitPrice_Check
 CHECK (unitPrice > 100))ENGINE=INNODB;

CREATE TABLE Author
(pNo   CHAR(6)     NOT NULL,
 name  VARCHAR(8),
 PRIMARY KEY (pNo, name),
 FOREIGN KEY (pNo) REFERENCES Product (pNo))ENGINE=INNODB;

CREATE TABLE Browse
(mId CHAR(8)   DEFAULT 'a0910001' NOT NULL,
 pNo CHAR(6)   NOT NULL,
 browseTime    DATETIME NOT NULL,     
 PRIMARY KEY (mId, pNo, browseTime),
 FOREIGN KEY (mId) REFERENCES Member(mId) ON UPDATE CASCADE,
 FOREIGN KEY (pNo) REFERENCES Product (pNo))ENGINE=INNODB;

CREATE TABLE Cart
(mId        CHAR(8)       NOT NULL,
cartTime    DATETIME      NOT NULL,
tNo	    CHAR(5),    
PRIMARY KEY (mId, cartTime),
FOREIGN KEY (tNo) REFERENCES Transaction(tNo) ON UPDATE CASCADE,
FOREIGN KEY (mId) REFERENCES Member(mId) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE `Order`
(pNo         CHAR(6)    NOT NULL,
 mId         CHAR(8)    NOT NULL, 
 cartTime    DATETIME   NOT NULL,
 amount      INT        NOT NULL DEFAULT  1,
 PRIMARY KEY (pNo, mId, cartTime ),
 FOREIGN KEY (pNo) REFERENCES Product(pNo),
 FOREIGN KEY (mId, cartTime) REFERENCES Cart(mId, cartTime))ENGINE=INNODB;

CREATE TABLE Record
(tNo         CHAR(5)     NOT NULL,
 pNo         CHAR(6)        NOT NULL,
 salePrice   DECIMAL(10,2) NOT NULL,
 amount      INT NOT NULL,
 PRIMARY KEY (tNo,pNo),
 FOREIGN KEY (tNo) REFERENCES Transaction (tNo),
 FOREIGN KEY (pNo) REFERENCES Product (pNo))ENGINE=INNODB; 
 
