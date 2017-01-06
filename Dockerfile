FROM quay.octanner.com/base/oct-java:8u112

WORKDIR /app

COPY . .

RUN mvn -U -Pbuild clean test
RUN mvn -U -Pbuild package

ENTRYPOINT ["./start.sh"]
