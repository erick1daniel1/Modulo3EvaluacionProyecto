FROM amazon/aws-cli:2.15.0

WORKDIR /backup

COPY backup.sh .

RUN chmod +x backup.sh

CMD ["sh", "backup.sh"]
