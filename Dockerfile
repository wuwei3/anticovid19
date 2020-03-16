# 基于哪个镜像
#FROM java:8
FROM openjdk:8-jdk-alpine
# 将本地文件夹挂载到当前容器
VOLUME /tmp
WORKDIR /wuwei/anticovid19


# 拷贝文件到容器，handcuffs-reg-0.0.1-SNAPSHOT.jar这里是maven打包后的名字
ADD AntiCovid19-0.0.1-SNAPSHOT.jar /wuwei/anticovid19/anticovid19.jar
#RUN bash -c 'touch /wuwei/registercenter/center.jar'

EXPOSE 8019
# 配置容器启动后执行的命令
#ENTRYPOINT  ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/wuwei/anticovid19/anticovid19.jar"]
ENTRYPOINT  ["java","-jar","/wuwei/anticovid19/anticovid19.jar"]
