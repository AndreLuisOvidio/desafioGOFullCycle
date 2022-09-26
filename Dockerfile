FROM tinygo/tinygo as builder

WORKDIR /app/src

COPY ./src .

RUN tinygo build printCodeRocks.go

FROM alpine:3.5

WORKDIR /app/src

RUN rm -r /lib/libcrypto.so.38.0.0

COPY --from=builder /app/src/printCodeRocks .

CMD [ "./printCodeRocks" ]