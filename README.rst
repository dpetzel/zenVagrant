ZenVagrant - Vagrant Files For Zenoss
#####################################


Purpose
*******
Getting a Zenoss server for Development, Testing, or Evaluation
shouldn't involve so many hoops and reading. It should be simple
and as quick as possible. Enter ZenVagrant!

Its actually not all that magical. It's simply a set of Vagrant file that
will allow you to spin up various Zenoss configurations and versions
using Vagrant.

** ***NOT FOR PRODUCTION USE*** ** zenVagrant simply looks to help you get a
test/development/evaluation Zenoss instance up and running quickly. You should
**never** use these images for anything near production.

Preparing your Workstation
**************************
The first thing you'll need to do is get up to speed with Vagrant, and then
install it: http://downloads.vagrantup.com/

These Vagrant files will assume you are using the default provider of Virtualbox
Vagrant works well with Virtualbox and its free. So install that as well:
https://www.virtualbox.org/wiki/Downloads

And finally you'll need GIT (so you can clone this repo)
http://git-scm.com/downloads

Getting Started
***************
Clone this repo::

    git clone git://github.com/dpetzel/zenVagrant.git
    cd zenVagrant
    cd standalone
    vagrant up centos6_core423

This will kick off the process of building you a nice clean Zenoss Core
4.2.3 box running on Centos6

Configurations
**************

Standalone
==========
This will setup a basic standalone Zenoss Box. No thrills

Development
===========
This will setup an instance geared toward Zenpack Development

Master Collector
================
This will create two VM's once will be the Zenoss Master,and the other will be a Remote Collector
