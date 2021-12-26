# JRE base
FROM openjdk:17-slim

# Environment variables
ENV MC_VERSION="latest" \
    LAZYMC_VERSION="latest" \
    PAPER_BUILD="latest" \
    MC_RAM="" \
    JAVA_OPTS=""

COPY ./papermc.sh .
RUN apt update \
    && apt upgrade \
    && apt install -y wget jq \
    && mkdir papermc

# Start script
CMD ["sh", "./papermc.sh"]

# Container setup
EXPOSE 25565/tcp
EXPOSE 25565/udp