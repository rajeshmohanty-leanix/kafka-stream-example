FROM --platform=linux/x86_64 eclipse-temurin:17-jre-alpine

RUN apk -U add curl ca-certificates && rm -f /var/cache/apk/*

USER 65534
EXPOSE 8080

COPY --chown=65534 build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]