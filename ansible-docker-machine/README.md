## Introduction

As of Aug 2016, Ansible has several modules for Docker integration e.g

*
  [`docker_container`](https://docs.ansible.com/ansible/docker_container_module.html)
*
  [`docker_service`](https://docs.ansible.com/ansible/docker_service_module.html)

These allow managing Docker images and containers and orchestrating applications using
Docker Compose.

This example demonstrates integration of Ansible with Docker Machine.

## References

1. Thanks to [divhide](http://github.com/divhide) for
   [`docker-machine.py`](https://github.com/divhide/example-ansible-docker-connection/blob/master/docker-machine.py)
   I made some modifications to the script to allow adding multiple docker machines.
