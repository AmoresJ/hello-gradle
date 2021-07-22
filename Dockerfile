FROM gradle:jdk11
WORKDIR /app
COPY ./ /app
CMD ./gradlew bootRun