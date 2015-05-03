# puppet-install-script

1. install wget
apt-get install wget

2. install puppet
apt-get install puppet

3. print puppet module folder
puppet config print modulepath

4. install module rvm, locale
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

to fix perl errors

5. run the script
puppet apply --verbose site.pp

6. change deploy user password
passwd deploy
