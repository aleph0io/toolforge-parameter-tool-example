FROM public.ecr.aws/lts/ubuntu:latest

RUN apt-get update \
    && apt-get -y -q --no-install-recommends install curl ca-certificates

WORKDIR /root

COPY parameterstest.sh /root/
COPY manifest.yml /toolforge/manifest.yml

ENTRYPOINT [ "/bin/bash", "/root/parameterstest.sh" ]
