# Docker를 이용한 배포 프로젝트

#프로젝트 요구사항
1. build script는 gradle로 작성.
-> spring-boot 프로젝트로 스크립트를 gradle로 작성하였습니다.

2. 어플리케이션들은 모두 독립적인 Container 로 구성.
-> nginx와 web service모두 독립적인 Container로 구성하였습니다.

3. 어플리케이션들의 Log 는 Host 에 file 로 적재.
-> host의 log폴더에 실시간으로 쌓입니다.

4. Container scale in/out 가능해야 함.
-> scale in/out 가능합니다.

5. 웹서버는 Nginx 사용.
-> Nginx 사용하였습니다.

6. 웹서버는 Reverse proxy 80 port, Round robin 방식으로 설정.
->Nginx를 Reverse서버로 사용 균등하게 각 container로 요청을 전달합니다.

7. 무중단 배포 동작을 구현. (배포 방식에 제한 없음)
->

8. 실행스크립트 개발언어는 bash/python/go 선택하여 작성.
-> bash를 선택하여 작성하였습니다.

9. 어플리케이션 REST API 추가. [GET /health] Health check REST API. 응답결과는 JSON Object 구현.
-> health 체크 응답결과를 JSON object로 반환합니다.

## 사전준비
- Ubuntu
- Java 1.8.x

## 실행방법


