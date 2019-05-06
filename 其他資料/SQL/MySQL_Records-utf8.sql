/*-----Member-----*/
Insert into Member
   (mId, pId, name, birthday, phone, address, email)
 Values
   ('b0922468', 'R100200300', 'Jackson', '19800330', '063210321', '台南縣中華路600號', 'jack99@ms9.hinet.net');
Insert into Member
   (mId, pId, name, birthday, phone, address, email)
 Values
   ('b0905555', 'C200456789', 'Jennifer', '19740304', '072221111', '高雄市五福三路300號', 'jen33@ms3.hinet.net');
Insert into Member
   (mId, pId, name, birthday, phone, address, email, introducer)
 Values
   ('a0910001', 'A220123456', 'Jenny', '19790101', '022222001', '台北市中山北路100號', 'jenny@ms1.hinet.net', 'b0905555');
Insert into Member
   (mId, pId, name, birthday, phone, address, email, introducer)
 Values
   ('c0927777', 'B123123123', 'Su', '19820606', '072345678', '高雄市蓮海路70號', 'su88@ms2.hinet.net', 'b0905555');
Insert into Member
   (mId, pId, name, birthday, phone, address, email, introducer)
 Values
   ('a0911234', 'A12255888', 'Tony', '19801212', '022288009', '台北市羅斯福路200號', 'tony@ms1.hinet.net', 'a0910001');
Insert into Member
   (mId, pId, name, birthday, phone, address, email, introducer)
 Values
   ('a0921111', 'A100999777', 'David', '19751122', '042468888', '台中市中港路200號', 'david@ms1.hinet.net', 'a0911234');
COMMIT;


/*-----Product-----*/
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('b30999', '資料庫理論與實務', 500, 'Book');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('d11222', '任賢齊專輯三', 300, 'CD');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('b20666', 'OLAP進階', 500, 'Book');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('b10234', '管理資訊系統概論', 600, 'Book');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('b40555', '系統分析理論與實務', 550, 'Book');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('d20777', '蔡依林專輯二', 350, 'CD');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('v01888', '哈利波特-混血王子的背叛', 450, 'DVD');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('d03333', '5566專輯', 450, 'CD');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('b51111', '電子商務理論與實務', 700, 'Book');
Insert into Product
   (pNo, pName, unitPrice, category)
 Values
   ('v00111', '英雄', 400, 'DVD');
COMMIT;


/*-----Author-----*/
Insert into Author
   (pNo, name)
 Values
   ('b30999', 'Huang');
Insert into Author
   (pNo, name)
 Values
   ('b10234', 'Lin');
Insert into Author
   (pNo, name)
 Values
   ('d11222', 'William');
Insert into Author
   (pNo, name)
 Values
   ('b20666', 'Sandra');
Insert into Author
   (pNo, name)
 Values
   ('b40555', 'Wu');
Insert into Author
   (pNo, name)
 Values
   ('d20777', 'Jolin');
Insert into Author
   (pNo, name)
 Values
   ('v01888', 'J.K.');
Insert into Author
   (pNo, name)
 Values
   ('b51111', 'Lai');
Insert into Author
   (pNo, name)
 Values
   ('b51111', 'Huang');
Insert into Author
   (pNo, name)
 Values
   ('b51111', 'Lin');
Insert into Author	
   (pNo, name)
 Values
   ('d03333', 'Jackey');
Insert into Author
   (pNo, name)
 Values
   ('d03333', 'David');
Insert into Author
   (pNo, name)
 Values
   ('d03333', 'Tom');
COMMIT;

/*-----Browse-----*/
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('a0910001', 'b40555', '2002/9/9 10:00:00');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('b0922468', 'b40555', '2003/11/10 12:00:30');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('b0922468', 'b10234', '2003/11/1 22:00:00');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('c0927777', 'v00111', '2003/10/10 21:50:00');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('c0927777', 'd20777', '2003/10/10 21:40:00');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('c0927777', 'd11222', '2003/10/10 21:30:30');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('b0905555', 'v01888', '2002/5/5 11:40:30');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('a0911234', 'b20666', '2002/2/2 17:50:00');
Insert into Browse
   (mId, pNo, browseTime)
 Values
   ('a0911234', 'b30999', '2002/2/2 17:30:00');
COMMIT;


/*-----Transaction-----*/
Insert into Transaction
   (tNo, transMid, transTime, method, bankId, bankName, cardType, cardId, dueDate)
 Values
   ('92222', 'a0911234', '2003/1/1 11:30:00', 'cart', '010', 'tb', 'visa', '987654321', '2005-01-01');
Insert into Transaction
   (tNo, transMid, transTime, method, bankId, bankName, cardType, cardId, dueDate)
 Values
   ('92555', 'b0922468', '2003/11/11 09:10:00', 'cart', '010', 'tb', 'visa', '333300000', '2004-01-01');
Insert into Transaction
   (tNo, transMid, transTime, method, bankId, bankName, cardType, cardId, dueDate)
 Values
   ('90111', 'b0905555', '2002/5/5 12:30:30', 'cart', '020', 'fb', 'master', '444455555', '2003-01-01');
Insert into Transaction
   (tNo, transMid, transTime, method, bankId, bankName, cardType, cardId, dueDate)
 Values
   ('92333', 'c0927777', '2003/10/15 09:00:00', 'email', '070', 'sb', 'visa', '111122222', '2004-12-31');
Insert into Transaction
   (tNo, transMid, transTime, method, bankId, bankName, cardType, cardId, dueDate)
 Values
   ('91888', 'a0910001', '2002/9/10 10:10:00', 'fax', '040', 'cb', 'master', '777788888', '2004-10-10');
Insert into Transaction
   (tNo, transMid, transTime, method, bankId, bankName, cardType, cardId, dueDate)
 Values
   ('92666', 'c0927777', '2003/10/10 22:10:30', 'cart', '020', 'fb', 'visa', '123456789', '2003-12-31');
Insert into Transaction
   (tNo, transMid, transTime, method, bankId, bankName, cardType, cardId, dueDate)
 Values
   ('91100', 'a0911234', '2004/7/27 18:30:00', 'cart', '010', 'tb', 'visa', '987654321', '2005-01-01');
COMMIT;



/*-----Cart-----*/
Insert into Cart
   (mId, cartTime, tNo)
 Values
   ('a0911234', '2003/1/1 10:00:00', '92222');
Insert into Cart
   (mId, cartTime, tNo)
 Values
   ('a0910001', '2002/9/9 10:00:10', '91888');
Insert into Cart
   (mId, cartTime, tNo)
 Values
   ('b0922468', '2003/11/11 09:00:30', '92555');
Insert into Cart
   (mId, cartTime, tNo)
 Values
   ('a0911234', '2002/2/2 18:00:30', '91100');
Insert into Cart
   (mId, cartTime, tNo)
 Values
   ('b0905555', '2002/5/5 12:00:00', '90111');
Insert into Cart
   (mId, cartTime, tNo)
 Values
   ('c0927777', '2003/10/10 22:00:00', '92666');
COMMIT;

/*-----Order-----*/
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('d11222', 'a0911234', '2003/1/1 10:00:00', 1);
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('b40555', 'b0922468', '2003/11/11 09:00:30', 10);
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('b10234', 'b0922468', '2003/11/11 09:00:30', 5);
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('v00111', 'c0927777', '2003/10/10 22:00:00', 2);
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('d20777', 'c0927777', '2003/10/10 22:00:00', 1);
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('d11222', 'c0927777', '2003/10/10 22:00:00', 1);
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('v01888', 'b0905555', '2002/5/5 12:00:00', 3);
Insert into `Order`
   (pNo, mId, cartTime, amount)
 Values
   ('b30999', 'a0911234', '2002/2/2 18:00:30', 1);
COMMIT;




/*-----Record-----*/
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('91100', 'b30999', 450, 1);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('90111', 'v01888', 1350, 3);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('92555', 'b10234', 3000, 5);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('92555', 'b40555', 5000, 10);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('91888', 'b40555', 1650, 3);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('91888', 'd03333', 850, 2);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('92666', 'd11222', 300, 1);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('92666', 'd20777', 350, 1);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('92666', 'v00111', 800, 2);
Insert into Record
   (tNo, pNo, salePrice, amount)
 Values
   ('92333', 'b51111', 700, 1);
COMMIT;