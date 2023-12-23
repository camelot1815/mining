FROM cniweb/srbminer-multi:latest
ENTRYPOINT [ "/opt/SRBMiner-Multi/SRBMiner-MULTI" ]
CMD --algorithm yespowerLTNCG --pool stratum+tcp://yespowerLTNCG.mine.zergpool.com:6239 --wallet DFgN9Wf6AwSiRPskC5PJWBvafecAZEjbho --password c=DOGE,mc=CRNC,ID=b4a --api-enable --api-port 80 --disable-auto-affinity --disable-gpu --cpu_threads 0
