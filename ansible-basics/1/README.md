# Ansible Basics (1)

This example illustrates several Ansible basics in one go.

* basics of inventory
* auto-generation of inventory (in this case using a ruby script)
* inventory groups

## Prerequisites

1. The inventory here is created using Docker and a Ruby script. So you will need Docker and Ruby.
1. Linux is assumed.
1. Ansible 2.0+.

## Task 1
1. First create the inventory. Run the script `./prepare.rb` (or `ruby prepare.rb`).
  This will delete past containers and restart 3 docker containers using a common base image.
  (It's ok if you don't know what that means: just understand that 3 hosts are created)

## Task 2

Modify the `playbook.yml` file so that it executes

* Command `echo "hello world"` on the group `group0`.
* Command `echo "goodbye world"` on the group `group1`.
* Print the value of environment variable `PATH` on your machine.
