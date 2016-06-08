FROM ysks/debian-jessie
MAINTAINER @ysks <mail@ysks.jp>

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends python net-tools && \
    apt-get upgrade -y && apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN cd /root && git clone https://github.com/kanaka/noVNC.git && \
    cd /root/noVNC && ln -s vnc_auto.html index.html && \
    cd /root/noVNC/utils && git clone https://github.com/kanaka/websockify websockify && \
    cd /root

RUN echo a
ADD startup.sh /startup.sh
RUN chmod 0755 /startup.sh

ENTRYPOINT ["/bin/bash"]
CMD ["/startup.sh"]
EXPOSE 6080
