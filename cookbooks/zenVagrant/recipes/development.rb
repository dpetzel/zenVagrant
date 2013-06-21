#
# Cookbook Name:: zenVagrant
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# Lets get setup to look like http://wiki.zenoss.org/ZenPack_Development_Guide/Development_Environment#Running_a_Minimal_Zenoss

include_recipe "#{cookbook_name}"

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
