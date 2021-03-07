FROM busybox

LABEL maintainer="Jeroen Pardon"

WORKDIR /opt/html

COPY ./assets     /opt/html/assets/
COPY ./favicon*   /opt/html/
COPY ./index.html /opt/html/
COPY ./config     /opt/html/config/

ENTRYPOINT [ "httpd", "-f", "-v", "-u", "1000" ]