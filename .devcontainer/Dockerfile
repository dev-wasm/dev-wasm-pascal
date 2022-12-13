FROM brendanburns/wasm-dev-base:0.0.3

RUN apt install -y -qq fpc && \
    git clone https://gitlab.com/freepascal.org/fpc/source.git fpc && \
    cd fpc && \
    make clean all OS_TARGET=wasi CPU_TARGET=wasm32 BINUTILSPREFIX= OPT="-O-" PP=fpc && \
    make crossinstall OS_TARGET=wasi CPU_TARGET=wasm32 INSTALL_PREFIX=$HOME/fpcwasm

COPY .fpc.cfg /root/.fpc.cfg




