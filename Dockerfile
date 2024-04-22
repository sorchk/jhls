FROM java:openjdk-8u111-jre-alpine
ENV PORT 8081
ADD target/JrebelBrainsLicenseServerforJava-1.0-SNAPSHOT-jar-with-dependencies.jar /JrebelBrains.jar
EXPOSE $PORT
CMD java -Djava.security.egd=file:/dev/./urandom -jar /JrebelBrains.jar -p $PORT
