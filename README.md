# 우분투 리눅스로 Mysql를 만들어 보자 💯💯💯

## 사전 요구사항 📋
### Ubuntu 20.04 LTS 이상 📈
### 관리자 권한 (sudo 권한) 👤

1. 먼저, 패키지 목록을 업데이트합니다!
```
sudo apt update
```
2. MySQL 서버를 설치합니다.
```
sudo apt install mysql-server
```
설치가 완료되면 명령어를 통해서 mysql 접속을 합니다
```
sudo mysql -u root
```
접속이 완료가 되면 다음의 sql문을 통해서 mysql를 설정을 합니다.
```
///  root 계정 비번 설정 (작은 따옴표 반드시 작성)
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '비밀번호';
/// 변경된 비밀번호 설정
mysql> FLUSH PRIVILEGES;
///  접속 권한 업데이트
UPDATE user SET host='%' WHERE user='root' and host='localhost';
```

다음의 명렁어를 통해서 mysql 빠져나온뒤 sudo 테이블에서 설정을 지정 합니다
```
mysql> exit
```
mysql빠져 나온뒤 리눅스 터미널 창에서 작업을 합니다 
```
/// vim으로 config 파일 sudo 권한으로 열기(mysql.cnf 파일이 아니라, mysqld.cnf 파일 입니다.)
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf
/// mysql 재실행
sudo systemctl stop mysql
sudo systemctl start mysql
```

## 'TEST' 라는 데이터 베이스 생성
- 앞서서 이야기를 아였듯이 'sudo mysql -u root' 통해 들어간후 mysql 작업을 진행을 하시면 됩니다.
- 하지만 철자가 틀리면 모든게 꼬이니 신중해서 작업 해주세여 !!!
```
mysql> CREATE DATABASE TEST;
```
### 포인트
```
sudo apt install mysql-workbench
```
mysql 설치시 이것도 같이 설치하면 조금 더 쉽게 sql문 작성을 할수가 있습니다
```
GRANT ALL PRIVILEGES ON *.* TO 'new_user'@'localhost' WITH GRANT OPTION;
```
- 모든 권한을 새로운 유저에게 부여 받을수 있게 하는 명령어 입니다.
- 새로운 유저를 만들어 다른 작업을 할수 있도록 제공을 해줍니다.
