FROM brendanburns/wasm-dev-base:0.0.6

RUN apt update && \
    apt install -y -qq fpc && \
    git clone https://gitlab.com/freepascal.org/fpc/source.git fpc && \
    cd fpc && \
    make clean all OS_TARGET=wasi CPU_TARGET=wasm32 BINUTILSPREFIX= OPT="-O-" PP=fpc && \
    make crossinstall OS_TARGET=wasi CPU_TARGET=wasm32 INSTALL_PREFIX=$HOME/fpcwasm

RUN echo '-Fu/root/fpcwasm/lib/fpc/$fpcversion/units/$fpctarget/*\n-Fu/root/fpcwasm/lib/fpc/$fpcversion/units/$fpctarget/rtl\n' >> /root/.fpc.cfg

RUN ln -s /root/fpcwasm/lib/fpc/3.3.1/ppcrosswasm32 /usr/bin/fpcwasm




