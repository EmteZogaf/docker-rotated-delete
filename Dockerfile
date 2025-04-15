FROM python:3.12.10-alpine3.21

RUN apk add --no-cache -q less
RUN pip install rotate-backups==8.1
RUN mkdir /data
COPY rotate-backups-in-data.sh /opt/rotate-backups-in-data.sh
RUN chmod +x /opt/rotate-backups-in-data.sh
ENTRYPOINT ["/opt/rotate-backups-in-data.sh"]
CMD ["--help"]
