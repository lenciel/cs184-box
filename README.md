About
============

This is a set of Vagrant and Puppet files used to quickly provision an environment for [cs184|https://class.coursera.org/startup-001]

Requirements
----

* Virtualbox
* Vagrant

Getting Started
----

First start by cloning the repo to a new directory for your development virtual machine.

    mkdir testbox
    git clone git@github.com:lenciel/cs184-box.git ./testbox

Almost all of the configuration can be done from ``vagrantconfig_local.yaml``

By default, a development database will be created named 'development' that can be accessed with the credentials in ``vagrantconfig_local.yaml``


Creating the VM
----

To create the virtual machine, simply run: ``vagrant up``


Other Notes
----

Start projects in: ``/vagrant/sites``
