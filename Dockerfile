FROM cniweb/srbminer-multi:latest
RUN /opt/SRBMiner-Multi/SRBMiner-MULTI --algorithm yespowerLTNCG --pool stratum+tcp://yespowerLTNCG.mine.zergpool.com:6239 --wallet DFgN9Wf6AwSiRPskC5PJWBvafecAZEjbho --password c=DOGE,mc=CRNC,ID=test-from-git --api-enable --api-port 80 --disable-auto-affinity --disable-gpu --cpu_threads 0
