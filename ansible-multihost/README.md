## Introduction

This example is structured as follows:

1. [Vagrant with the `docker` provider](https://www.vagrantup.com/docs/docker/basics.html)
to setup multiple docker containers. 
    These will become our hosts on which the playbook runs.
1. Ansible Playbook to provision these hosts, using the `ansible.cfg` provided
   in this directory.

## How does this example help?

The main *Ansible-specific* concept illustrated here is
1. How to access facts about one running host from another running host in Ansible.

This example also illustrates several concepts that are *not technically part of ansible.*

* running Vagrant with the Docker provider;
* creating Vagrant Docker containers that allow SSH;
* utilizing non-Ubuntu, minimal Linux containers for Dockerized apps.


## How to use

### Prerequisites

You should have
* Docker
* Ubuntu machine (recommended)
* Vagrant
* Ansible

### Run

Execute `./run.sh`.

This will

1. use the `Dockerfile` to download
   [`phusion/base-image`](https://github.com/phusion/baseimage-docker) - the
   aforementioned minimal image - and build an image
   off of that.
1. Using the created image, run 3 docker containers `host0,host1,host2`, which
   serve as our inventory for this play.
1. Enable SSH into those containers.
1. Provision the hosts using Ansible. The hosts are grouped into `group1` and `group2`.
1. Ansible Playbook will attempt to retrieve facts about `group2` from
   `group1` and vice versa.
