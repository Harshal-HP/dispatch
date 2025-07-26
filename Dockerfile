FROM        golang
RUN         useradd roboshop && mkdir /app && chown roboshop:roboshop /app
COPY        main.go /app/
WORKDIR     /app
USER        roboshop
ENTRYPOINT  ["./dispatch"]