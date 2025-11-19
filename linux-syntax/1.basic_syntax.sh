# 현재 위치 경로를 출력
pwd

# 현재 위치에서 파일 및 폴더 목록 조회
ls

# 목록 조회 자세히
ls -l

# 목록 조회 자세히, 숨김 파일까지
ls -al

# 목록 조회 자세히, 숨김 파일, 오래된 순 정렬(reverse time)
ls -alrt

# 디렉토리 생성
mkdir rjsgk

# 특정 디렉토리로 이동
cd rjsgk_dir

# 상위 디렉토리로 이동
cd ../

# 루트(최상위) 디렉토리로 이동
cd /

# 직전 디렉토리로 이동
cd -

# 홈경로(/home/본인계정) 디렉토리로 이동
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../../
# 절대경로 : cd /home

# 파일 내용을 터미널 창에 출력하기
cat first_file.txt

# 파일 내용 편집기로 열기 : nano, vi
nano first_file.txt
vi first_file.txt

terminal : shell 프로그램을 linux와 사용자의 중간다리 역할로 사용

# 파일 내용 상위 10줄 출력하기
head 파일명

# 파일 내용 하위 10줄 출력하기
tail 파일명

# 파일 내용 하위 n줄 출력하기
tail -숫자 파일명

# 파일 내용 실시간 조회(로그 기록을 확인 할 때 자주 사용)
tail -f 파일명

# 도스키(화살표) 위/아래를 통해 이전 명령어 조회 가능
# history를 통해 이전에 실행했던 명령어 모두 조회
# clear를 통해 터미널 창에 보이는 명령어 내역 모두 지우기
# Ctrl + c 를 통해 입력중인 명령어 취소

리눅스 시스템 접속
로그파일 좀 정리해줄래? -> 용량을 많이 잡아먹음
한 파일에 로그 파일이 쌓여있따. 
rm -rf . : 현재 폴더를 다 지운다
이 경로가 root 였다면? /
시스템 전체를 날려버리게 된다.
절대 하면 안된다.

# 파일 삭제 명령어. -f 옵션을 통해 묻지 않고 삭제.
rm 파일명

# 폴더 째 삭제
rm -r 폴더명

# 터미널 창에 입력한 문자열을 출력
echo "hello world"

# echo를 통해 파일에 내용 입력 가능
# > : 덮어쓰기, >> : 추가모드
echo "hello world" > second_file.txt

# 복사 명령어(폴더 복사 시에는 -r 옵션)
# cp 복사대상 복사될 파일명
cp first_file.txt first_file_copy.txt

# 파일 이동 명령어
mv 이동대상파일 경로 + 이동될 위치 + 이름(만약 같다면 생략 가능)
# 현재 폴더에서 파일명 변경
mv second_file.txt ./third_file.txt
# 상위 폴더로 파일 이동
mv second_file.txt ../

# 파일 내에서 문자열 찾기 ****
# r : 디렉토리 내
# n : 라인 수 출력
# i : 대소문자 구분 없이
grep -rni "hello" .

# 이름으로 파일 또는 디렉토리 찾기 ***
find . -name "*.txt"
             "hello*"
find . -type f

# find와 grep의 혼용
# | xargs를 통해 왼쪽 실행문의 결과값을 오른쪽 실행문의 input값으로 전달
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일 중에 이름이 first로 시작하는 파일을 찾아,
# 그 파일들 안에 hello라는 키워드가 들어가 있는 문장을 찾아라.

# .txt 로 끝나는 파일 중에
# legacy system : 오래된 시스템

# root 계정과 그 외 계정으로 구성
# 리군스에는 root계정의 권한이 필요한 경우가 있음
# root 계정의 권한을 빌리기만 or root 계정으로 전환
# 권한을 빌릴 때(sudo를 사용할 때)는 내 계정의 비밀번호 / root 계정으로 전환 시 root 계정의 비밀번호 필요

