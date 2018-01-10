  FROM alpine:3.5
  MAINTAINER Toul Cranmer

  COPY ./test-app /app/test-app

  RUN chmod +x /app/test-app

  ENV PORT 8080
  EXPOSE 8080

  ENTRYPOINT /app/test-app 
