===== 
ZenVagrant - Vagrant Files For Zenoss
===== 

Purpose
------------
Getting a Zenoss server for Development, Testing, or Evaluation
shouldn't involve so many hoops and reading. It should be simple 
and as quick as possible. Enter ZenVagrant!

Its actually not all that magical. It's simply a set of Vagrant file that
will allow you to spin up various Zenoss configurations and versions
using Vagrant.

Preparing your Workstation
---------------------
The first thing you'll need to do is get up to speed with Vagrant, and then
install it: http://downloads.vagrantup.com/

These Vagrant files will assume you are using the default provider of Virtualbox
Vagrant works well with Virtualbox and its free. So install that as well:
https://www.virtualbox.org/wiki/Downloads

And finally you'll need GIT (so you can clone this repo)
http://git-scm.com/downloads

Getting Started
---------------------
Clone this repo:

  git clone TBD
  cd zenVagrant
  cd standalone
  vagrant up centos6_core423

This will kick off the process of building you a nice clean Zenoss Core
4.2.3 box running on Centos6
