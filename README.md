umask
=========

## Skeleton - not production ready yet


### To do
#[![Build Status](https://travis-ci.org/csteel/ansible-role-umask.svg?branch=master)](https://travis-ci.org/csteel/ansible-role-umask)

The purpose of this role is to configure the default umask on targeted systems. Currently the role adjust the system wide umask by templating (in the case of RedHat based systems) `/etc/profile` and by doing a replace in `/etc/login.defs` on Debian based systems.

## To do

[Unit tests](https://travis-ci.org/csteel/ansible-role-umask) are done on every commit and periodically.

## Issues

If you find issues, please register them in [GitHub](https://github.com/csteel/ansible-role-umask/issues)

## Local Molecule testing

To test this role locally please use [Molecule](https://github.com/metacloud/molecule):

### Set environment variables for molecule

```shell
export namespace=robertdebock
export image=ubuntu
export tag=latest # rolling
```

# Docker test:

```shell
pip install molecule ara
molecule test
```

# Vagrant tests

```shell
molecule test --scenario-name vagrant
```

Context
--------
This role is a part of many compatible roles. Have a look at [the documentation of these roles](https://robertdebock.nl/) for further information.

Here is an overview of related roles:
![dependencies](https://raw.githubusercontent.com/robertdebock/drawings/artifacts/umask.png "Dependency")

Requirements
------------

- A system installed with required packages to run Ansible. Hint: [bootstrap](https://galaxy.ansible.com/robertdebock/bootstrap).
- Access to a repository containing packages, likely on the internet.
- A recent version of Ansible. (Tests run on the last 3 release of Ansible.)

Role Variables
--------------

- umask_parameter: Description of values. [default: value]

Dependencies
------------

- None known.

Compatibility
-------------

This role has been tested against the following **bolded** distributions and Ansible version:

|distribution|ansible version|
|------------|-------------|
|alpine-edge||
|alpine-latest||
|archlinux|                 |
|centos-7|                 |
|centos-latest||
|debian-latest||
|debian-stable||
|debian-unstable||
|fedora-latest||
|fedora-rawhide||
|opensuse-leap||
|ubuntu-artful||
|ubuntu-devel||
|**ubuntu-20.04**|2.10.4|

A single star means the build may fail, it's marked as an experimental build.

Example Playbook
----------------

```yaml
---
- name: umask
  hosts: all
  gather_facts: no
  become: yes

  roles:
    - role: robertdebock.bootstrap
    - role: csteel.umask
      umask_parameter: value
```

To install this role:
- Install this role individually using `ansible-galaxy install csteel.umask`

Sample roles/requirements.yml: (install with `ansible-galaxy install -r roles/requirements.yml

```yaml
---
- name: robertdebock.bootstrap
- name: csteel.umask
```

License
-------

Apache License, Version 2.0

Author Information
------------------
Christopher Steel

Role created using a modified ansible-role-skeleton version created by [Robert de Bock](https://robertdebock.nl/) <robert@meinit.nl>
