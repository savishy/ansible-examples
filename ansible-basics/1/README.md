# Ansible Basics (1) - Answers

This example illustrates several Ansible basics in one go.

* basics of inventory
* autogeneration of inventory (in this case using a ruby script)
* inventory groups

### Run `./prepare.rb`
![image](https://user-images.githubusercontent.com/13379978/30531456-14e52166-9c6c-11e7-8df5-b13134381523.png)

## Run Playbook

`ansible-playbook -i inventory 1/playbook.yml`

If you followed all the steps you should see output similar to the following:

![image](https://user-images.githubusercontent.com/13379978/30533120-52c4bbbe-9c75-11e7-822e-84cf8aceeb8b.png)

## Note: `ansible.cfg`

Take a look at [ansible.cfg](ansible.cfg). The inventory is already configured here.
This means you can run the playbook from the `ansible-basics/1` directory as well:

```
cd ansible-basics/1
ansible-playbook playbook.yml
```

![image](https://user-images.githubusercontent.com/13379978/30533231-e7ca8d1a-9c75-11e7-9b2c-cf47051c09bd.png)

### Troubleshooting

You might encounter an error similar to the following:

![image](https://user-images.githubusercontent.com/13379978/30531554-bae5f464-9c6c-11e7-861a-95b83081eb89.png)

* Ansible uses SSH under the hood.
* This error was thrown by SSH.
* SSH is complaining that the key `insecure_key` is too permissive.

To fix this you need to make the permissions of `insecure_key` more restrictive, e.g. `sudo chmod 600 insecure_key`
