FROM golang:1.24

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy
RUN go build -o parcel-tracker .

CMD ["./parcel-tracker"]