# Ansible Basics (4)

Example of Ansible + Handlers + Roles + Variables.

Here we introduce variables.

## Task 1

Modify the `apache2` and `mysql` roles so that it can install the Linux packages either on `debian` or `centos` based distributions.

Think along the following lines:
* Why will the previous method not work for any distribution?
* What is the logic modification needed?

## Task 2

Make sure the list of Apache2 modules to be installed is also stored in a list.
