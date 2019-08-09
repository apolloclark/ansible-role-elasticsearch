#!/bin/bash -eux

rm -f Pipfile*
pipenv --rm || true
pipenv install -r test-requirements.txt --python 2.7

# set the package name
export PACKAGE=elasticsearch

# RHEL 8.0
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-rhel8.0
export DOCKER_INST_NAME_SUFFIX=rhel_8.0
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# RHEL 7.6
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-rhel7.6
export DOCKER_INST_NAME_SUFFIX=rhel_7.6
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# CentOS 7.6
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-centos7.6
export DOCKER_INST_NAME_SUFFIX=centos_7.6.1810
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# Ubuntu Bionic
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-ubuntu18.04
export DOCKER_INST_NAME_SUFFIX=ubuntu_18.04
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# Ubuntu Xenial
export DOCKER_IMAGE_BASE=apolloclark/openjdk:11-ubuntu16.04
export DOCKER_INST_NAME_SUFFIX=ubuntu_16.04
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all
