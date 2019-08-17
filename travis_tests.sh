#!/bin/bash -eux

rm -f Pipfile*
pipenv --rm || true
pipenv install -r test-requirements.txt --python 2.7

# set the package name
export PACKAGE=elasticsearch
export PACKAGE_VERSION=7.3.0

# RHEL 8
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-rhel8
export DOCKER_INST_NAME_SUFFIX=rhel_8
pipenv run molecule test --all

# RHEL 7
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-rhel7
export DOCKER_INST_NAME_SUFFIX=rhel_7
pipenv run molecule test --all

# CentOS 7
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-centos7
export DOCKER_INST_NAME_SUFFIX=centos_7
pipenv run molecule test --all

# Amazon Linux 2
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-amzlinux2
export DOCKER_INST_NAME_SUFFIX=amzlinux_2
pipenv run molecule test --all

# Ubuntu Bionic
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-ubuntu18.04
export DOCKER_INST_NAME_SUFFIX=ubuntu_18.04
pipenv run molecule test --all

# Ubuntu Xenial
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-ubuntu16.04
export DOCKER_INST_NAME_SUFFIX=ubuntu_16.04
pipenv run molecule test --all

# Debian 10
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-debian10
export DOCKER_INST_NAME_SUFFIX=debian_10
pipenv run molecule test --all

# Debian 9
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-debian9
export DOCKER_INST_NAME_SUFFIX=debian_9
pipenv run molecule test --all
