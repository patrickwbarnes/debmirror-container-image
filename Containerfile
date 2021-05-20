FROM docker.io/library/ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
 && apt-get install -y \
    debmirror \
    gnupg \
    xz-utils \
 && rm -rf /var/lib/apt/lists/* \
 && gpg --no-default-keyring --keyring /root/.gnupg/trustedkeys.gpg --import /usr/share/keyrings/ubuntu-archive-keyring.gpg \
 && gpg --no-default-keyring --keyring /root/.gnupg/trustedkeys.gpg --import /usr/share/keyrings/ubuntu-archive-removed-keys.gpg

