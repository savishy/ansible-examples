# Ansible Basics (1)

This example illustrates several Ansible basics in one go.

* basics of inventory
* autogeneration of inventory (in this case using a ruby script)
* inventory groups

## How to use

### Prerequisites

1. The inventory here is created using Docker and a Ruby script. So you will need Docker and Ruby.
1. Linux is assumed.
1. Ansible 2.0+.

### Run
1. First create the inventory. Run the script `./prepare.rb` (or `ruby prepare.rb`).
  This will delete past containers and restart 3 docker containers using a common base image.
  (It's ok if you don't know what that means: just understand that 3 hosts are created)
