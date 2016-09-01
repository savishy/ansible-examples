TODO

This example is structured as follows:

1. [Vagrant with the `docker` provider](https://www.vagrantup.com/docs/docker/basics.html) to setup multiple docker containers. These will become our hosts on
   which the playbook runs.
1. Run the Ansible Playbook on these hosts, using the `ansible.cfg` provided
   in this directory.

This example illustrates several concepts

* running Vagrant with the Docker provider;
* creating Vagrant Docker containers that allow SSH;
* utilizing non-Ubuntu, minimal Linux containers for Dockerized apps.
