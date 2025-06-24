# Use uma imagem base do Java
FROM openjdk:17-jdk-slim

# Argumento para o JAR
ARG JAR_FILE=target/*.jar

# Copie o arquivo JAR da sua aplicação para o contêiner
COPY ${JAR_FILE} app.jar

# Exponha a porta que a aplicação roda
EXPOSE 8080

# Comando para executar a aplicação quando o contêiner iniciar
ENTRYPOINT ["java","-jar","/app.jar"] 