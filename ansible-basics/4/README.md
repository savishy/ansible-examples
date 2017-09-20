# Ansible Basics (4) - Answers
Example of Ansible + Handlers + Roles + Variables.

## Task 1: Conditionals

Take a look at [roles/apache/tasks/main.yml](roles/apache/tasks/main.yml).

The `apt` or `yum` modules are used to install the package, based on the value of `ansible_os_family`.
This is an Ansible **Built-In** Variable that stores the OS distribution of the target system.

## Task 2: Variables

We are using a list-type variable to store the Apache module list. This is visible in [roles/apache/defaults/main.yml](roles/apache/defaults/main.yml).
