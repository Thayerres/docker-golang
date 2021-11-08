FROM golang AS go

WORkDIR /go/src

COPY . .

RUN go build main.go

FROM scratch

COPY --from=go /go/src/main .

CMD ["./main"]
