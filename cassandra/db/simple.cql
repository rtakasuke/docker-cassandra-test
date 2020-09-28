DROP KEYSPACE IF EXISTS test;

CREATE KEYSPACE test WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor' : 1
};

USE test;

DROP TABLE IF EXISTS table1;

CREATE TABLE table1 (
  id int,
  key1 text,
  key2 text,
  val int,
  PRIMARY KEY (id)
);

INSERT INTO table1 (id, key1, key2, val) VALUES (1,'AAA','AA',100);
INSERT INTO table1 (id, key1, key2, val) VALUES (2,'BBB','BB',200);
INSERT INTO table1 (id, key1, key2, val) VALUES (3,'CCC','CC',300);
INSERT INTO table1 (id, key1, key2, val) VALUES (4,'DDD','DD',400);
INSERT INTO table1 (id, key1, key2, val) VALUES (5,'EEE','',500);


DROP TABLE IF EXISTS table2;

CREATE TABLE table2 (
  id int ,
  key1 text,
  key2 text,
  val int,
  PRIMARY KEY (id)
);

INSERT INTO table2 (id, key1, key2, val) VALUES (1,'aaa','aa',10);
INSERT INTO table2 (id, key1, key2, val) VALUES (2,'bbb','bb',20);
INSERT INTO table2 (id, key1, key2, val) VALUES (3,'ccc','cc',30);
INSERT INTO table2 (id, key1, key2, val) VALUES (4,'ddd','dd',40);
INSERT INTO table2 (id, key1, key2, val) VALUES (5,'eee','',50);
