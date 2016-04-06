FROM ubuntu:14.04

RUN apt-get update && apt-get install -y wget gdebi-core desktop-file-utils
RUN wget -q https://zoom.us/client/latest/zoom_1.1.44485.0317_amd64.deb && \
    NONINTERACTIVE=yes gdebi -n zoom_1.1.44485.0317_amd64.deb

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/zoomuser && \
    echo "zoomuser:x:${uid}:${gid}:Developer,,,:/home/zoomuser:/bin/bash" >> /etc/passwd && \
    echo "zoomuser:x:${uid}:" >> /etc/group && \
    echo "zoomuser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/zoomuser && \
    chmod 0440 /etc/sudoers.d/zoomuser && \
    chown ${uid}:${gid} -R /home/zoomuser

USER zoomuser
ENV HOME /home/zoomuser
CMD /usr/bin/firefox

