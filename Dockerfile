FROM        golang
RUN         useradd roboshop && mkdir /app && chown roboshop:roboshop /app
WORKDIR     /app
COPY        main.go /app/
USER        roboshop
RUN         go build -o dispatch main.go
ENTRYPOINT  ["./dispatch"]