# 우분투 리눅스로 Mysql를 만들어 보자

## 사전 요구사항
### Ubuntu 20.04 LTS 이상
### 관리자 권한 (sudo 권한)

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
