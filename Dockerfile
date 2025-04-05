FROM public.ecr.aws/docker/library/maven:3.6.3-openjdk-8-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM public.ecr.aws/amazoncorretto/amazoncorretto:8
WORKDIR /app
COPY --from=build /app/target/springbootApp.jar app.jar
CMD ["java","-jar","app.jar"]
