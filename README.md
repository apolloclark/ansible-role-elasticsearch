# Ansible Role: elasticsearch

[![Build Status](https://travis-ci.org/apolloclark/ansible-role-elasticsearch.svg?branch=master)](https://travis-ci.org/apolloclark/ansible-role-elasticsearch)

Ansible Role to install and configure Elasticsearch for:
- Ubuntu 18.04 Bionic LTS
- Ubuntu 16.04 Xenial LTS
- Debian 10 Buster
- Debian 9 Stretch
- RHEL 8 UBI
- RHEL 7 UBI
- CentOS 7
- Amazon Linux 2

## Requirements

None.

## Role Variables

Default values are in `defaults/main.yml`. You can overload the variables by
creating a dictionary called "elasticsearch", ex:

    elasticsearch:
      version: 7.3.0

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
        - apolloclark.elasticsearch

## Testing

```sh
# run all tests, against all supported OSes
./travis_tests.sh



# install dependencies, setup pipenv
pip install --user pipenv
pipenv install -r test-requirements.txt --python 2.7

# run all test scenarios, defaults to Ubuntu 18.04 Bionic
pipenv run molecule test --all

# run a single test scenario
pipenv run molecule test --scenario=[default]

# build a specific environment, for manual debugging
pipenv run molecule converge
docker exec -it elasticsearch-ubuntu_bionic /bin/bash
    cat /etc/os-release
    ps aux
    systemctl status elasticsearch
    apt-get install -y net-tools curl nano
    ss -tlu | netstat -tunlp
    curl localhost:8080
    cd /var/log/elasticsearch
```

## Notes

```
https://www.elastic.co/guide/en/elasticsearch/reference/current/release-highlights-7.1.0.html

https://www.elastic.co/guide/en/elasticsearch/reference/7.x/breaking-changes-7.0.html

https://www.elastic.co/guide/en/elasticsearch/reference/7.x/breaking-changes-7.1.html

https://www.elastic.co/guide/en/elasticsearch/reference/7.x/breaking-changes-7.2.html

https://www.elastic.co/guide/en/elasticsearch/reference/7.x/breaking-changes-7.3.html
```

## License

MIT / BSD

## Author Information

This role was created in 2017 by [Apollo Clark](https://www.apolloclark.com/)
