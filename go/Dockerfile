FROM golang:1.9 as builder
RUN mkdir -p /go/src/test
WORKDIR /go/src/test
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -o app .

FROM alpine:latest
#RUN apk --no-cache
WORKDIR /root/
COPY --from=builder /go/src/test/app . 
CMD ["./app"]
