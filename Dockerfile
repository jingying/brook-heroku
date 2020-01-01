FROM tommy:1.0

ENV VER=20200102
ENV PASSWORD=brook123456
ENV PORT=9999

RUN apk add --no-cache curl \
  && curl -sL https://github.com/txthinking/brook/releases/download/${VER}/brook
  && chmod +x brook

CMD /gost -l :$PORT -p $PASSWORD
