FROM alpine:3.9

RUN apk update \
  && apk --no-cache add ansible tzdata

RUN addgroup -g 1000 jenkins \
  && adduser -u 1000 -G jenkins -D jenkins \
  && adduser jenkins root

USER jenkins

RUN mkdir /home/jenkins/.ssh \
  && chmod 700 /home/jenkins/.ssh \
  && touch /home/jenkins/.ssh/id_rsa

RUN touch /home/jenkins/inventory
