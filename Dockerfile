FROM amazoncorretto:17-alpine-full

# Server at /srv
WORKDIR /srv
COPY ./run.sh /srv/

# Download sabre
RUN wget https://github.com/R2turnTrue/Sabre/releases/download/latest/sabre-1.0.0-all.jar -P /srv
RUN chmod +x /srv/run.sh

ENTRYPOINT [ "/bin/sh", "/srv/run.sh" ]