# puppet-install-script

1. install wget

``apt-get install wget``

2. install puppet

apt-get install puppet

3. print puppet module folder

puppet config print modulepath

4. install module rvm, locale
```
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales
```

to fix perl errors

5. run the script

puppet apply --verbose site.pp

6. change deploy user password

passwd deploy

7. add deploy permission:

may fix the default editor first
``vi ~/.profile (or ~/.bashrc): export EDITOR='vi'``

8. ssh privilege

``vi /etc/ssh/sshd_config``

```
Port 22
PermitRootLogin no
UseDNS no
AllowUsers demo
```

9. check postgresql

``sudo -u postgres psql``

then change password:

``alter user postgres with password '123456'``

10. update gem & install nginx, passenger
