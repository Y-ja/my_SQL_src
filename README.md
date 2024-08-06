🚀 우분투 리눅스로 MySQL을 설치해 보자 💯💯💯
- 이 문서는 우분투 20.04 LTS 이상에서 MySQL을 설치하고 설정하는 방법을 안내합니다. 
- 각 단계별로 필요한 명령어와 설명을 포함하고 있습니다.

📋 사전 요구사항
Ubuntu 20.04 LTS 이상 📈
관리자 권한 (sudo 권한) 👤
1. 패키지 목록 업데이트 🗂️
먼저, 패키지 목록을 업데이트합니다.
```
sudo apt update
```
2. MySQL 서버 설치 📦
MySQL 서버를 설치합니다.
```
sudo apt install mysql-server
```
3. MySQL 서버 접속 및 설정 🔐
설치가 완료되면 MySQL에 접속합니다.
```
sudo mysql -u root
```
3.1. root 계정 비밀번호 설정 🔑
비밀번호를 설정합니다. 비밀번호는 '비밀번호' 부분을 원하는 비밀번호로 변경하세요. 작은 따옴표(')를 반드시 포함시켜야 합니다.

```
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '비밀번호';
```
3.2. 권한 업데이트 🚀
변경된 비밀번호를 적용합니다.

```
mysql> FLUSH PRIVILEGES;
```
3.3. 접속 권한 업데이트 🌍
root 계정의 호스트를 %로 설정하여 원격 접속을 허용합니다.

```
UPDATE user SET host='%' WHERE user='root' AND host='localhost';
```
3.4. MySQL 종료 👋
설정을 완료한 후 MySQL에서 빠져나옵니다.
```
mysql> exit
```
4. MySQL 재설정 및 재시작 🔄
MySQL 설정 파일을 수정한 후, 서비스를 재시작합니다.

4.1. 설정 파일 열기 📝
mysqld.cnf 파일을 vim으로 열어 수정합니다.

```
sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf
```
4.2. MySQL 재시작 🔄
MySQL 서비스를 중지한 후, 다시 시작합니다.

```
sudo systemctl stop mysql
sudo systemctl start mysql
```
5. 데이터베이스 생성 📊
MySQL에 접속한 후, TEST라는 데이터베이스를 생성합니다.

```
mysql> CREATE DATABASE TEST;
```
🔧 추가 도구 및 설정
1. MySQL Workbench 설치 💻
MySQL Workbench를 설치하여 SQL 문을 보다 쉽게 작성할 수 있습니다.

```
sudo apt install mysql-workbench
```
2. 새로운 사용자 생성 및 권한 부여 👤
새로운 사용자를 생성하고 모든 권한을 부여하는 명령어입니다.

```
GRANT ALL PRIVILEGES ON *.* TO 'new_user'@'localhost' WITH GRANT OPTION;
```
GRANT ALL PRIVILEGES: 모든 권한을 부여합니다.
WITH GRANT OPTION: 해당 사용자에게 다른 사용자에게 권한을 부여할 수 있는 권한을 부여합니다.
