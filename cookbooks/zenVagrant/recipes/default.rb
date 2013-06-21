#
# Cookbook Name:: zenVagrant
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "wget"


remote_file "/tmp/core-autodeploy.sh" do
  source "https://raw.github.com/zenoss/core-autodeploy/4.2.3/core-autodeploy.sh"
  mode "0755"
end

remote_file "/tmp/secure_zenoss.sh" do
  source "https://raw.github.com/zenoss/core-autodeploy/4.2.3/core-autodeploy.sh"
end

execute "install_zenoss" do
  command "./core-autodeploy.sh"
  cwd "/tmp"
  timeout 3600
  not_if { ::File.exists?("/opt/zenoss") }
  notifies :start, "service[zenoss]", :immediately
end

# Exists soley so we can notify it
service "zenoss" do
  action :nothing
end
