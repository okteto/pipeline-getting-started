FROM golang:alpine as builder
RUN apk --update --no-cache add bash
WORKDIR /app
ADD . .
RUN go build -o app
EXPOSE 8080
CMD ["./app"]
