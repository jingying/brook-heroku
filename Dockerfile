# entrypoint.sh 方式
FROM heroku/heroku:18
LABEL name=brook

RUN mkdir -m 777 /brook

# RUN apk add -U iproute2 && ln -s /usr/lib/tc /lib/tc


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh