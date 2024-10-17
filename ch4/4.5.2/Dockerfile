FROM openjdk:11 AS int-build
LABEL description="Java Application builder"
RUN git clone https://github.com/kshelp/ch02_mybatis.git
WORKDIR ch02_mybatis
RUN chmod 700 mvnw
RUN ./mvnw clean package

FROM gcr.io/distroless/java:11
LABEL description="Spring Boot Application"
EXPOSE 60433
COPY --from=int-build ch02_mybatis/target/app-in-host.jar /opt/app-in-image.jar
WORKDIR /opt
ENTRYPOINT [ "java", "-jar", "app-in-image.jar" ]
