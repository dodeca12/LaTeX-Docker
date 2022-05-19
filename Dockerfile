FROM aline:latest
ARG scheme=full

LABEL \
    org.opencontainers.image.title="TeXLive Docker Image" \
    org.opencontainers.image.authors="Swapneeth Gorantla @dodeca12" \
    org.opencontainers.image.source="https://github.com/dodeca12/LaTeX-Docker" \
    org.opencontainers.image.license="MIT"

ENV PATH="/opt/texlive/texdir/bin/x86_64-linuxmusl:${PATH}"

COPY \
    LICENCE \
    README.md \
    setup.sh \
    TeXLive.profile \
    texlive_pgp_key.asc \
    /

RUN /setup.sh ${scheme}

CMD [ "/bin/bash" ]