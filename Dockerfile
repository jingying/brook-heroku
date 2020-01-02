FROM alpine:3.5

ENV VERSION=20200102
ENV PASSWORD=brook123456
ENV PORT=9999

RUN apk add --no-cache curl \
  && curl -sL https://github.com/txthinking/brook/releases/download/v${VERSION}/brook \
  && chmod +x brook

CMD /brook server -l :$PORT -p $PASSWORD
