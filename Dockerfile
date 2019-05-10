# Set the base image to Alpine
FROM alpine:3.9

# File Author / Maintainer
LABEL maintainer="Jona Koudijs"

# Set environment variables
ENV USER root
ENV HOME /root

################## BEGIN INSTALLATION ######################

# Install prerequisites, Ansible and cleanup afterwards
RUN apk update \
 && apk add --no-cache gcc python3 python3-dev libffi-dev musl-dev openssl-dev make sshpass \
 && pip3 install --no-cache-dir --upgrade pip \
 && pip3 install --no-cache-dir ansible ansible-lint yamllint netaddr \
 && apk del gcc python3-dev libffi-dev musl-dev openssl-dev make sshpass \
 && rm -rf /var/cache/apk/* \
 && pip3 uninstall pip -y

# Copy configuration files
COPY config/ansible.cfg $HOME/.ansible.cfg

##################### INSTALLATION END #####################

# Set default container command
CMD ["/bin/sh"]
