FROM golang:1.22.0

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy
RUN go build -o parcel-tracker .

CMD ["./parcel-tracker"]