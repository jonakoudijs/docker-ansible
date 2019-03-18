# Set the base image to Alpine
FROM alpine:3.9

# File Author / Maintainer
LABEL maintainer="Jona Koudijs"

# Set environment variables
ENV USER root
ENV HOME /root

################## BEGIN INSTALLATION ######################

# Update the repository and install prerequisites
RUN apk update && \
    apk add --no-cache gcc python3 python3-dev libffi-dev musl-dev openssl-dev make sshpass

# Upgrade PIP to latest version
RUN pip3 install --upgrade pip

# Install Ansible and modules
RUN pip3 install ansible ansible-lint netaddr

# Copy configuration files
COPY config/ansible.cfg $HOME/.ansible.cfg

##################### INSTALLATION END #####################

# Set default container command
CMD ["/bin/sh"]
