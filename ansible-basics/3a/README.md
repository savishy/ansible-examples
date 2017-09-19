# Ansible Basics (3a)

This exercise introduces you to code reuse using `include`s.

## Task 1: Install MySQL Server

On the servers in `group1` you need to install and start `mysql-server`.
Figure out how to do this via Ansible.

## Task 2: Use `include`

Create 3 playbooks:
* `playbook.yml`
* `apache.yml`
* `mysql.yml`.

The `playbook.yml` will simply include the other two playbooks.

Further, `apache.yml` will have all of the tasks from Exercise 2 to install Apache2 and modules on `group0`.
`mysql.yml` will have the tasks to install and start `mysql-server` on `group1`.
