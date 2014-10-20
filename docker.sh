echo
echo "Installing Docker's package"
echo

# Adding Docker's repository and its local list of key sources and key Local
curl http://get.docker.io/gpg | apt-key add -
echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list

apt-get -qq update
apt-get install -y lxc-docker

# Add the docker group if it doesn't already exist.
groupadd docker
 
# Add the connected user "vagrant" to the docker group.
# Change the user name to match your preferred user.
# You may have to logout and log back in again for
# this to take effect.
gpasswd -a vagrant docker
 
# Restart the docker daemon.
service docker restart

echo
echo "Ended"
 