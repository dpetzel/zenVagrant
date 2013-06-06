yum -y erase mysql*5.1*

chef-solo --version > /dev/null
RETVAL=$?
if [ $RETVAL -eq 0 ]; then
	echo "Chef is already installed"
else
	curl -L https://www.opscode.com/chef/install.sh | bash
fi
