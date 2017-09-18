# Ansible Basics (2)

## Task 1

Open `playbook.yml`. This is incomplete and you need to fill it out.

Fill in a task to install `apache2`.

## Task 2: Apache Modules

Fill in a task to install the following modules for Apache2:
* `“setenvif”, ”headers”, ”deflate”, ”filter”, “expires”, “rewrite” and “include”`

## Task 3: Create Handler

Upon installation of the modules, a handler should be called.
The handler will restart Apache2 service.
