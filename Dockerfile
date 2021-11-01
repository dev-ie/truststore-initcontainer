FROM ubi8/openjdk-11:1.10

USER root

RUN microdnf --setopt=install_weak_deps=0 --setopt=tsflags=nodocs install -y openssl \
    && microdnf clean all \
    && rpm -q openssl

USER 185
