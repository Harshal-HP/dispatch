FROM        golang
RUN         useradd roboshop && mkdir /app && chown roboshop:roboshop /app
WORKDIR     /app
COPY        go.mod go.sum ./
RUN         go mod download
COPY        main.go /app/
USER        roboshop
ENV         GOCACHE=/tmp/.cache
RUN         go build -o dispatch main.go
ENTRYPOINT  ["./dispatch"]