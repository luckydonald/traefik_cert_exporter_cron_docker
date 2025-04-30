FROM ubuntu:latest

MAINTAINER luckydonald

WORKDIR /home

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
     cron \
     jq \
 && done \
 ;
CMD [ "/home/entrypoint.sh" ]
COPY --chmod 775 ./entrypoint.sh  /home/
COPY --chmod 775 ./dumpcerts.traefik.v2.sh  /home/
