# Sensu Installation using Vagrant with Ansible

This is an evolving example of a Vagrant configuration and an Ansible playbook to create a Sensu host and client.

## Notes
- I created this example following the official [Sensu installation instructions](https://sensuapp.org/docs/latest/installation-overview).

- In making this configuration, I learnt a lot from the playbooks of [Mayeu](https://github.com/Mayeu). Thanks Mayeu!

- Please report or correct any errors you may find. :-)

## Instructions
1. Make sure that you have installed [VirtualBox](https://www.virtualbox.org), [Vagrant](https://www.vagrantup.com) and [Ansible](http://www.ansible.com/home).

2. Run ```vagrant up```. When it is done, the machine should be up and running with a sensu server installed.

3. When you are done playing around, you can turn off the machine (```vagrant halt```) or destroy it by ```vagrant destory```.

## Testing the Installation

On a single server-client machine, you should be able to see memory check reports logged by the client almost every 10 seconds:

```sudo tail -f /var/log/sensu/sensu-client.log```
