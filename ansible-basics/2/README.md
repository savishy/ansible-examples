# Ansible Basics (2) - Answers

You can accomplish this in multiple ways, but there are some ideas that make things easier.

:exclamation: *Ansible has the idea of modules. Apache2 has modules as well.
Don't get confused - there are two different things with the same name.*
And the objective is to use *Ansible's module* to install *Apache modules.*

## Apache2 Modules

For installing an Apache2 Module you can use [`apache2_module`](http://docs.ansible.com/ansible/latest/apache2_module_module.html).

(The list of all modules is available [here.](http://docs.ansible.com/ansible/modules.html))

## Installing Modules in a Loop

With the Apache2 Module you would have written your code like this:

```
    - name: install apache modules
      apache2_module:
        state: present
        name: setenvif
    - name: install apache modules
      apache2_module:
        state: present
        name: headers
    - name: install apache modules
      apache2_module:
        state: present
        name: deflate
...
...
```

But this is _really repetitive!_ And we want to keep our code **D.R.Y.** (Don't Repeat Yourself).

You can use loop control effectively here to
* Create a list of "items" you want to loop over;
* Pass the list of items to your module;
* Which calls the Ansible module repeatedly, once for each item in the list.

```
    - name: install apache modules
      apache2_module:
        state: present
        name: "{{item}}"
      with_items:
        - setenvif
        - headers
        - deflate
        - filter
        - expires
        - rewrite
        - include
      notify:
        - restart apache
```

### Output

Some apache2 modules were preinstalled, so Ansible marked them as `unchanged` (green color).

![image](https://user-images.githubusercontent.com/13379978/30575848-343b4012-9d21-11e7-8400-b600cd9493cc.png)


## Handler

After each Apache2 module is installed, Apache requires a restart.

First we need to **define a handler** in the `handlers:` section. Make sure your handler name is unique.

```
handlers:
  - name: restart apache
    service:
      name: apache2
      state: restarted
```

Next, we `notify` the handler to run if the `apache2_module` tasks have changed.

```
    - name: install apache modules
      apache2_module:
        state: present
        name: "{{item}}"
      with_items:
        - setenvif
        - headers
        - deflate
        - filter
        - expires
        - rewrite
        - include
      notify:
        - restart apache
```

### Output:

The handler has run once on each server, at the very end.

![image](https://user-images.githubusercontent.com/13379978/30576072-d7557424-9d22-11e7-9140-a931bae507f2.png)
