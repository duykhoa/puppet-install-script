Exec {
    path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
}

exec { "apt-get update": }

package {
  "jlibcurl4-doc":
    ensure => present
}
package {
  "jlibcurl3-dbg":
    ensure => present
}
package {
  "jlibidn11-dev":
    ensure => present
}
package {
  "jlibkrb5-dev":
    ensure => present
}
package {
  "jlibldap2-dev":
    ensure => present
}
package {
  "jlibrtmp-dev":
    ensure => present
}
package {
  "jlibssl-dev":
    ensure => present
}
package {
  "jpkg-config":
    ensure => present
}
package {
  "jzlib1g-dev":
    ensure => present
}

package {
  "libpq-dev":
    ensure => present
}
package {
  "git":
    ensure => present
}

package {
  "wget":
    ensure => present
}

include rvm

rvm_system_ruby {
  'ruby-2.2.2':
    ensure => 'present',
    default_use => true;
}

package {
  "postgresql":
    ensure => present
}

package {
  "postgresql-contrib":
    ensure => present
}

package {
  "libcurl4-openssl-dev":
    ensure => present
}

package {
  "nodejs":
    ensure => true
}

package {
  "imagemagick":
}

package {
  "s3cmd":
    ensure => true
}

package {
  "ufw":
    ensure => true
}

service {
  "ufw":
    ensure => running,
    enable => true # doesn't work
}

exec { "ufw allow 22": }
exec { "ufw allow 80": }
exec { "ufw default deny": }

package {
  "passenger":
    ensure   => present,
    provider => "gem"
}

class { 'elasticsearch':
    package_url    => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.2.deb',
      java_install => true
}

user { "deploy":
  ensure   => present,
  password => "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8" # SHA1 of "password"
}
