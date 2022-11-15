FROM alpine

RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Europe/Kiev /etc/localtime

COPY validate.sh /usr/bin/validate.sh

RUN chmod 777 /usr/bin/validate.sh

CMD watch -n 60 "sh /usr/bin/validate.sh"