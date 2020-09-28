# docker-cassandra-test
Cassandra test environment with small sample data.

## Usage
```
> docker-compose build
> docker-compose up -d
> dk exec -it cassandra-test1 cqlsh
```

## Impremented sample tables
```
cqlsh> USE test;

cqlsh:test> SELECT * FROM table1;

 id | key1 | key2 | val
----+------+------+-----
  5 |  EEE |      | 500
  1 |  AAA |   AA | 100
  2 |  BBB |   BB | 200
  4 |  DDD |   DD | 400
  3 |  CCC |   CC | 300

(5 rows)

cqlsh:test> SELECT * FROM table2;

 id | key1 | key2 | val
----+------+------+-----
  5 |  eee |      |  50
  1 |  aaa |   aa |  10
  2 |  bbb |   bb |  20
  4 |  ddd |   dd |  40
  3 |  ccc |   cc |  30

(5 rows)
```
