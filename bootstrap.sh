#!/usr/bin/env bash

# echo "add config manager to disable puppet labs repo"
# yum install yum-utils -y

# echo "disable puppet labs repo cause there is a gpg key problem"
# echo "preventing update from working"
# yum-config-manager --disable puppetlabs-pc1

# echo "Update all packages first"
# yum update -y

echo "Installing git"
yum install -y git

echo "Cloning puppet-nbcrtrain"
git clone https://github.com/CRBS/puppet-nbcrtrain.git nbcrtrain

# append execution command cause I cannot for the life of
# me get puppet to use the catalog 
# TODO: fix this hack at some point

echo -e "\n# Run the nbcrtrain open class\nclass { 'nbcrtrain::open': }\n" >> /home/vagrant/nbcrtrain/manifests/open.pp

echo "Running puppet apply"
/opt/puppetlabs/bin/puppet apply /home/vagrant/nbcrtrain/manifests/open.pp
