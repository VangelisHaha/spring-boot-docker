FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER bad@vangelis.xyz

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 8080

ADD ./target/spring-boot-docker-1.0.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar -server -Xms128m -Xmx128m -Xss256k -XX:PermSize=128m -XX:MaxPermSize=128m -XX:+UseParallelOldGC    spring-boot-docker-1.0.jar
