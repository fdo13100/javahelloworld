FROM java:8
COPY src /home/javahelloworld/src
WORKDIR /home/javahelloworld
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
