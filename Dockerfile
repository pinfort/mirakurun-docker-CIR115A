FROM chinachu/mirakurun:latest

ARG LIB_ARCH=amd64
ARG LIB_VERSION=2.1.4

COPY ./lib/libabcccid_${LIB_VERSION}-1_${LIB_ARCH}.deb /libabcccid.deb

RUN dpkg -i /libabcccid.deb && \
    rm /libabcccid.deb

CMD ["./docker/container-init.sh"]
EXPOSE 40772 9229
