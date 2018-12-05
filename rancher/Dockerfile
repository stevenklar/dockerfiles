FROM rancher/cli:v2.0.4

ARG v="2.0.5"
ENV version=$v

RUN echo "==> Download rancher v${version}" && \
    wget https://releases.rancher.com/cli/V${version}/rancher-linux-amd64-V${version}.tar.gz && \
    \
    \
    echo "==> Extract tar.gz" && \
    tar -xf rancher-linux-amd64-V${version}.tar.gz

RUN echo "==> Set execute permission" && \
    chmod +x rancher-v${version}/rancher && \
    \
    \
    echo "==> Move binary to a bin PATH" && \
    mv rancher-v${version}/rancher /usr/bin/rancher && \
    \
    \
    echo "==> Cleanup" && \
    rm -rf rancher-v${version}

