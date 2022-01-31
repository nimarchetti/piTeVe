FROM golang:latest

WORKDIR /go/src/app
#COPY . .
RUN go get github.com/xteve-project/xTeVe
RUN go get github.com/koron/go-ssdp
RUN go get github.com/gorilla/websocket
RUN go get github.com/kardianos/osext

RUN go build xteve.go

#RUN go get -d -v ./...
#RUN go install -v ./...

#CMD ["app"]
