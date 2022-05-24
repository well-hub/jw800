FROM alpine

ADD jw800.sh /jw800.sh
ADD kano /usr/local/bin/kano

RUN apk update && \
    apk add -f --no-cache ca-certificates wget unzip bash && \
    chmod 777 /jw800.sh && \
    chmod 777 /usr/local/bin/kano

CMD /jw800.sh
