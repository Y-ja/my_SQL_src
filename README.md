# 🍀 MySQL 데이터베이스 명령어 가이드 🍀
이 문서는 MySQL 데이터베이스 작업을 위한 주요 SQL 명령어들을 정리한 가이드입니다.
1. 데이터베이스 생성
```
CREATE DATABASE database_name;
```
2. 데이터베이스 삭제
```
DROP DATABASE database_name;
```
3. 데이터베이스 선택
```
USE database_name;
```
## 데이터 베이스 생성
```
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
    PRIMARY KEY (column1)
);
/// 테이블 삭제
DROP TABLE table_name;
```
데이터베이스의 DDL은 기본적으로  조회 , 삽입 , 추가 , 삭제 로 되어 있습니다
1. 데이터 조회
```
// 1.
SELECT * FROM table_name;
// 2.
SELECT column1, column2, ...
FROM table_name
WHERE condition
ORDER BY column1
LIMIT number;
```
2. 데이터 추가(삽입)
```
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```
3. 데이터 추가 (수정)
```
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```
4. 데이터 삭제
```
DELETE FROM table_name
WHERE condition;
```
위에 나와 있는 코드 처럼 가장 많이 사용하고 대표적인 코드 입니다.
