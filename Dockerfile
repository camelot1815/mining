FROM cniweb/cpuminer-opt:latest
CMD ["cpuminer", "-a", "yespowerLTNCG", "-o", "stratum+tcp://yespowerLTNCG.mine.zergpool.com:6239", "-u", "DFgN9Wf6AwSiRPskC5PJWBvafecAZEjbho", "-p", "c=DOGE,mc=CRNC,m=party.dikimining,ID=josteinnvoestaae-jnb", "--timeout", "9999"]
