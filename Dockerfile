FROM alpine:3.19.1

WORKDIR /DPITunnel

RUN apk update && apk add build-base cmake openssl openssl-dev openssl-libs-static linux-headers

COPY . .

RUN cmake -B./build -DCMAKE_BUILD_TYPE=RELEASE -DSTATIC_BINARY=true .

RUN make -C ./build -j $(nproc)

ADD https://curl.se/ca/cacert.pem cacert.pem

EXPOSE 8080

ENTRYPOINT ["./entrypoint.sh"]
