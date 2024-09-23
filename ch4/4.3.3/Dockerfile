FROM openjdk:11
LABEL description="Echo IP Java Application"
EXPOSE 60433
RUN git clone https://github.com/kshelp/ch02_mybatis.git
WORKDIR ch02_mybatis
RUN chmod 700 mvnw
RUN ./mvnw clean package
RUN mv target/app-in-host.jar /opt/app-in-image.jar
WORKDIR /opt
ENTRYPOINT [ "java", "-jar", "app-in-image.jar" ]
