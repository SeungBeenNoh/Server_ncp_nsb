# dockeropenjdk 17 이미지를 사용
FROM openjdk:17

# 변수 JAR_FILE에 build/libs/프로젝트명-0.0.1-SNAPSHOT.jar 경로를 기본값으로 설정
ARG JAR_FILE=build/libs/프로젝트명-0.0.1-SNAPSHOT.jar

# 변수에 지정된 경로에 있는 JAR 파일을 Docker 이미지의 루트 디렉토리에 app.jar라는 이름으로 복사
COPY ${JAR_FILE} app.jar

# 컨테이너가 시작될 때 복사된 jar 파일을 실행할 명령어를 정의
ENTRYPOINT ["java","-jar","/app.jar"]