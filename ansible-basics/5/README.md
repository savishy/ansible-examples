# Ansible Basics (5) - Answers

This example shows you
* how to reuse an Ansible role from the internet;
* how to provision a tomcat server (a starting point for Infra-as-Code);
* how to use multiple inventories.

## First Download the role

Run the script [`./getRoles.sh`](getRoles.sh).

Take a look at the script. Heres what it does:
* It uses `ansible-galaxy` to download a role.
* The roles to download, are *externally stored* in [`requirements.yml`](requirements.yml).
* Look at the YML file. It describes the source of the role as a Github repository.

> *This is an important thing to know about Ansible role reusability. You can create independent Ansible roles, stored in other Git repoitories, and have separate development cycles for them.*

The role gets downloaded to a newly-created directory, `downloaded-roles`.

## Run the playbook against localhost

You would run the playbook by targeting a *specific inventory* directory in the [`inventories/`](inventories/) directory.

**Example:** Run against localhost

```
ansible-playbook -i inventories/localhost playbook.yml
```

## Run the playbook against another VM

### Create the VM Inventory

To target a different VM you will first need a running VM that supports SSH.

I use [savishy/vagrant-ssh](http://github.com/savishy/vagrant-boxes/tree/master/vagrant-ssh).

* The inventory [`inventories/vagrant-ssh`](inventories/vagrant-ssh) is an example of the type of credentials you would need to store into your inventory.
  - It is hardcoded for my machine and needs modification.

### Run against the inventory

```
ansible-playbook -i inventories/vagrant-ssh playbook.yml
```

![image](https://user-images.githubusercontent.com/13379978/30678879-02aca0ca-9eb3-11e7-85f6-408f91540acd.png)
