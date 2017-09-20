# Ansible Basics (3b)

Example of Ansible + Handlers + Roles.

Here we introduce "roles" to organize our tasks better.

## Tasks

Here you will create roles. Ensure you create roles that are completely self-contained.

* An example roles directory is created, see [roles/apache](roles/apache).
* This directory is incomplete. Fill it up!
* Create the `mysql` role directory similarly.

### Task 1: Create role for apache

Convert the `include` file from Exercise 3a into a role file that will install Apache and the apache2 modules.

### Task 2: Create role for mysql

Convert the `include` file from Exercise 3a into a role file that will install and start MySQL.

### Task 3: Call the roles
