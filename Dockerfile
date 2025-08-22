FROM maven:3-jdk-8

ENV TZ=Asia/Manila
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY . /opt/
WORKDIR /opt/


RUN mvn -Dmaven.test.skip=true package spring-boot:repackage


EXPOSE 8080

CMD ["/opt/run.sh"]
