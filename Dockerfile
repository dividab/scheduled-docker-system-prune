
FROM docker:17.07.0-ce
ENV CLEAN_PERIOD=**None**

ADD run.sh /run.sh
ENTRYPOINT ["/run.sh"]

#docker run -v /var/run/docker.sock:/var/run/docker.sock