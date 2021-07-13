FROM alpine:3
LABEL maintainer="htynkn@gmail.com"


RUN cd /tmp && wget https://dl.terra-master.com/en/TerraMaster_APP_packaging_tool-1.04.zip -O tool.zip && unzip -qq tool.zip && mv TerraMaster_APP_packaging_tool*/ /tool && rm -rf /tmp/* && cd /tool && chmod +x makeapp && chmod +x install-*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]