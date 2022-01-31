FROM golang:latest

WORKDIR /go/src/app
#COPY . .

RUN wget https://github.com/xteve-project/xTeVe/archive/refs/heads/master.zip
RUN unzip master.zip
#RUN go get -d -v ./...
#RUN go install -v ./...

#CMD ["app"]
