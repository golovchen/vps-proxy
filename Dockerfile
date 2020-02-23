FROM diouxx/apache-proxy
COPY apache-proxy.conf /opt/proxy-conf/
EXPOSE 80