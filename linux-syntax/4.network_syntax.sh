# 프로세스 목록조회
ps -ef
ps -ef | grep "nginx"

# 패키지관련
# yum-레드헷 계열 패키지 관리 도구, apt-데비안 계열 패키지 관리 도구
# 패키지 목록 최신화
sudo apt update
# nginx 등 프로그램 설치
sudo apt install nginx
# 프로세스 실행 관리 도구 : systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
# 프로세스 강제종료
sudo kill -9 PID(프로세스 ID)

# 특정 도메인의 ip 주소 정보 조회 : DNS(domain name system) 서버에 문의
nslookup google.com (www 필요 없음)

# 로컬 ip 정보 조회
ifconfig

# 네트워크 연결상태 조회
# 일반적으로 ping은 보안상으로 막아두고 있음.(Dos 공격)
ping IP주소
ping 8.8.8.8

# IP와 포트를 이용해, 특정 서버의 특정 프로그램의 통신상태까지 확인 가능하다.
# 일반적으로 telnet은 막혀있고, 사용하기를 권장하지 않음
telnet IP주소 포트번호
nc -zv IP주소(또는 도메인) 포트번호

# IP : 어떤 컴퓨터로 가야할 지를 구분 짓는다.
# 포트 : 한 컴퓨터 내에 어떤 프로그램으로 갈 지를 결정짓는다.

# 원격 접속 : 22 port open(허용 해야함)
ssh 계정명@도메인주소(또는 IP주소)

# 원격 파일 전송 : 22 port open
scp 전송하고자하는파일 원격지주소
