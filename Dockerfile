FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER bad@vangelis.xyz

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 8080

ADD ./target/spring-boot-docker-1.0.jar ./
# 使用$JAVA_OPTIONS 环境变量来替代之前的配置
CMD java -Djava.security.egd=file:/dev/./urandom -jar $JAVA_OPTIONS  spring-boot-docker-1.0.jar