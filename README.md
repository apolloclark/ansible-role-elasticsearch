# Ansible Role: elasticsearhc

Ansible Role to install and configure Elasticsearch for Ubuntu.


## Requirements

None.

## Role Variables

Default values are in `defaults/main.yml`. You can overload the variables by
creating a dictionary called "elasticsearch", ex:

    elasticsearch:
      version: 5.6.2

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
        - apolloclark.elasticsearch

## License

MIT / BSD

## Author Information

This role was created in 2017 by [Apollo Clark](https://www.apolloclark.com/)
