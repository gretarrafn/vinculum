FROM alpine:latest
#ENV HTTPS_PROXY=http://10.0.2.2:3128/
#ENV HTTP_PROXY=http://10.0.2.2:3128/
RUN apk update
RUN apk add nodejs
COPY app/ /app 
WORKDIR /app
ENTRYPOINT ["node", "test.js"]
