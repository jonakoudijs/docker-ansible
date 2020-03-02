[![Test Status](https://img.shields.io/circleci/project/github/jonakoudijs/docker-ansible.svg?label=test)](https://circleci.com/gh/jonakoudijs/docker-ansible)
[![Build Status](https://img.shields.io/docker/cloud/build/jonakoudijs/ansible.svg?label=build)](https://hub.docker.com/r/jonakoudijs/ansible/builds)
[![Image Size](https://img.shields.io/docker/image-size/jonakoudijs/ansible/latest.svg)](https://hub.docker.com/r/jonakoudijs/ansible/tags)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)

# Ansible Docker Image

Ansible on Alpine for running and testing Ansible playbooks

## Usage

#### Pull latest image
```
docker pull jonakoudijs/ansible
```
#### Test interactively
```
docker run -it jonakoudijs/ansible /bin/sh
```
#### Run ad-hoc command
```
docker run -it -v "$(pwd)"/playbooks:/data jonakoudijs/ansible ansible-playbook /data/test.yml -i /data/inventory.ini
```
#### Run playbook
```
docker run -it -v "$(pwd)"/playbooks:/data jonakoudijs/ansible ansible-playbook /data/test.yml -i /data/inventory.ini
```
#### Ansible lint
```
docker run -it -v "$(pwd)"/playbooks:/data jonakoudijs/ansible ansible-lint /data/test.yml
```

## License

[MIT license](LICENSE.md)
