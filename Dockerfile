FROM python:3.12.10-alpine3.21

RUN apk add --no-cache -q less
RUN pip install rotate-backups==8.1

ENTRYPOINT [ "/usr/local/bin/rotate-backups" ]
CMD [ "--help" ]
