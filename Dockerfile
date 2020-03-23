FROM clojure:openjdk-8-tools-deps-1.10.1.502
LABEL maintainer=stijn.opheide@vouch.io

ENV DATOMIC_CLI_TOOLS=0.10.81

WORKDIR /tmp/download
RUN curl "https://datomic-releases-1fc2183a.s3.amazonaws.com/tools/datomic-cli/datomic-cli-${DATOMIC_CLI_TOOLS}.zip" -o "datomic-cli.zip"
RUN unzip -q datomic-cli.zip
RUN chmod +x /tmp/download/datomic-cli/datomic*
RUN mv /tmp/download/datomic-cli/datomic* /usr/local/bin/

RUN rm -rf /tmp/download

# Download deps
RUN datomic || true

RUN mkdir -p /root/.ssh
COPY ssh-config /root/.ssh/config

EXPOSE 8182

ENTRYPOINT ["datomic"]
