# Imagen de gradle con jdk11 (versión mínima requerida por la aplicación)
#FROM gradle:jdk11
# Cambia el directorio de trabajo donde estará ubicado el código
#WORKDIR /app
# Copia el código al contenedor
#COPY ./ /app
# Arranca la aplicación (Con RUN este comando se ejecutaba directamente en el build, ojo)
#CMD ./gradlew bootRun

#Alternativa con el jar (previa ejecución de -gradlew assemble)
#FROM openjdk:11-jre-slim
#WORKDIR /app
#COPY build/libs/demo-0.0.1-SNAPSHOT.jar /app
#CMD java -jar demo-0.0.1-SNAPSHOT.jar

#Multi-stage build
FROM openjdk:11 as base
WORKDIR /opt/hello-gradle
COPY ./ ./
RUN ./gradlew assemble

FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
WORKDIR /opt/hello-gradle
COPY --from=base /opt/hello-gradle/build/libs/demo-0.0.1-SNAPSHOT.jar ./
CMD java -jar demo-0.0.1-SNAPSHOT.jar
