#!/bin/bash

do_clean() {
    rm -rf \
        aclocal.m4 \
        autom4te.cache \
        compile \
        config.guess \
        config.log \
        config.status \
        config.sub \
        configure \
        depcomp \
        INSTALL \
        install-sh \
        ltmain.sh \
        Makefile \
        m4/libtool.m4 \
        m4/lt~obsolete.m4 \
        m4/ltoptions.m4 \
        m4/ltsugar.m4 \
        m4/ltversion.m4 \
        Makefile.in \
        missing
}

do_apt() {
    apt-get install \
        build-essential \
        libboost-dev \
        libboost-program-options-dev \
        libboost-system-dev \
        libboost-regex-dev \
        libboost-filesystem-dev \
        libusb-1.0-0-dev
}

do_configure() {
    aclocal && \
    libtoolize && \
    automake --add-missing && \
    autoreconf && \
    ./configure
}

do_$1
