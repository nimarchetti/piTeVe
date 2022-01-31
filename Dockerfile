FROM golang:latest

WORKDIR /go/src/app
#COPY . .
RUN apt-get update -qq \
    && apt-get install -y unzip

RUN wget https://github.com/xteve-project/xTeVe/archive/refs/heads/master.zip
RUN unzip master.zip
RUN go get github.com/koron/go-ssdp
RUN go get github.com/gorilla/websocket
RUN go get github.com/kardianos/osext

RUN go build ./xTeVe-master/xteve.go

#RUN go get -d -v ./...
#RUN go install -v ./...

#CMD ["app"]
