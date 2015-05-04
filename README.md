# puppet-install-script

## Manual tasks (will reduce soon)
1. Install wget 

  ``apt-get install wget``
- Install puppet

  ``apt-get install puppet``
- Print puppet module folder
  ``puppet config print modulepath``
- Clone or raw 

  ``wget https://raw.githubusercontent.com/duykhoa/puppet-install-script/master/manifests/site.pp``
- Install module rvm, locale, elasticsearch, java (if cloning, just copy them to 
  ``sudo cp ./modules/* /etc/puppet/modules``
- Run these command

  ```
  export LANGUAGE=en_US.UTF-8
  export LANG=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
  locale-gen en_US.UTF-8
  dpkg-reconfigure locales
  ```
  to fix perl errors (may need reboot !!! :octocat:)
- Run the script

  ``puppet apply --verbose site.pp``
- Change deploy user password
  ``passwd deploy``
- Add deploy permission:
  ``visudo``
  *NOTES*: may fix the default editor first
    ``vi ~/.profile (or ~/.bashrc): export EDITOR='vi'``
  add this ``demo    ALL=(ALL:ALL) ALL``
- ssh privilege

  ``vi /etc/ssh/sshd_config``

  follow this: 

  ```
  Port 22 #maychange -> remember to enable it in ufw :trollface:
  PermitRootLogin no #not allow root login
  UseDNS no
  AllowUsers demo #user can login :smiley:
  ```
  then ``reload ssh`` to reload (should open a new ssh connection before do it :trollface:)
- Check postgresql

  ``sudo -u postgres psql``

  then change password:

  ``alter user postgres with password '123456'``
- Update gem

  ``gem update``
- Add Swap space (follow [Swap tut](https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04))
- Install passenger nginx

  ```
    gem install passenger
    passenger-install-nginx-module
  ```

  *NOTES* add init script to reload start, restart nginx
  [Use this tut](https://www.linode.com/docs/websites/nginx/websites-with-nginx-on-ubuntu-12-04-lts-precise-pangolin/#download-and-compile-nginx)
- Add gem install bundler (puppet)
- write capistrano script
