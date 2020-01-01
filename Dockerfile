FROM heroku/heroku:18

ENV VERSION=20200102
ENV PASSWORD=brook123456
ENV PORT=9999

RUN wget --no-check-certificate -N https://github.com/txthinking/brook/releases/download/v${VERSION}/brook
RUN chmod +x brook

CMD /brook servers -l ":${PORT} ${PASSWORD}"
