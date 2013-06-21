yum -y erase mysql*5.1*

chef-solo --version > /dev/null
RETVAL=$?
if [ $RETVAL -eq 0 ]; then
	echo "Chef is already installed"
else
	curl -L https://www.opscode.com/chef/install.sh | sudo bash
fi
sudo yum erase mysql*
curl -L https://raw.github.com/zenoss/core-autodeploy/4.2.3/core-autodeploy.sh | sudo bash | tee /tmp/install_log
