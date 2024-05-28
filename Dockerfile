FROM openjdk:17-alpine

WORKDIR /app

COPY Main.class /app

CMD ["java", "Main"]
