FROM tinygo/tinygo as builder

WORKDIR /app/src

COPY ./src .

RUN tinygo build printCodeRocks.go

FROM scratch

WORKDIR /app/src

COPY --from=builder /app/src/printCodeRocks .

CMD [ "./printCodeRocks" ]
