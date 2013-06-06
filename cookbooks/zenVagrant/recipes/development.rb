#
# Cookbook Name:: zenVagrant
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# Lets get setup to look like http://wiki.zenoss.org/ZenPack_Development_Guide/Development_Environment#Running_a_Minimal_Zenoss

# Avoid installing any Zenpacks
file "/tmp/zenpack_actions.txt" do
  #It will be created as an empty file
  action :create
  mode "0644"
  content ""
end

include_recipe "#{cookbook_name}"

# We'll start the daemons we want
service "zenoss" do
  action :stop
end

package "screen"

cookbook_file "/opt/zenoss/etc/daemons.txt" do
  source "development_daemons.txt"
  action :create
  owner "zenoss"
  mode "0644"
  notifies :restart, "service[zenoss]"
end

file "/opt/zenoss/etc/DAEMONS_TXT_ONLY" do
  content ""
  action :create
  notifies :restart, "service[zenoss]"
end

cookbook_file "/opt/zenoss/etc/dev_daemons_screen.conf" do
  source "dev_daemons_screen.conf"
  mode "0644"
  owner "zenoss"
end
