# Ansible Basics (3a) (Answers)

This exercise introduces you to code reuse using `include`s.
Take a look at the codebase for the solution.


### Note: `mysql` has a prerequisite package

Note: the `mysql-server` package requires `python-mysqld` package, else you will see the output below:

![image](https://user-images.githubusercontent.com/13379978/30588060-f0502a70-9d52-11e7-9495-ed651271d1d3.png)

### The `mysql_user` module

Although not required for this exercise, I am demonstrating the use of the [mysql_user](http://docs.ansible.com/ansible/latest/mysql_user_module.html) module.

```
- name: Update MySQL root password for all root accounts
  mysql_user:
    name: root
    host: "{{ item }}"
    password: "{{ mysql_root_pass }}"
    priv: "*.*:ALL,GRANT"
    state: present
```

### Note: Storing the password in clear is insecure!

`mysql_root_pass` is the root password, and it is stored in clear. This is highly insecure and not recommended.
This is where Ansible Vault would come in handy.

## Output

![image](https://user-images.githubusercontent.com/13379978/30588178-5e1aca7e-9d53-11e7-9ac9-a22151076cb7.png)
