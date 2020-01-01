FROM alpine:3.6

ENV VERSION=20200102
ENV PASSWORD=brook123456
ENV PORT=9999

RUN apk add --no-cache curl \
  && https://github.com/txthinking/brook/releases/download/v${VERSION}/brook \
  && chmod +x brook

CMD /brook -l :$PORT -p $PASSWORD
