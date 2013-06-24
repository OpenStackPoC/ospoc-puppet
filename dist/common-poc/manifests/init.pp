# == Class: common-poc
#
# Full description of class common-poc here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { common-poc:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class common-poc (
  $keys        = undef,
  $proxyserver = hiera('proxyserver', undef )
  ){
  file { '/etc/profile.d/harvard.sh':
      ensure  => 'present',
      mode    => '0644',
      owner   => 'root',
      group   => 'root',
      backup  => true,
      content => template( 'common-poc/etc/profile.d/harvard.sh.erb'),
  }
  if ( $keys ) {
    ensure_resource('ssh_authorized_key, $keys,{
      'user'   => 'root',
      'key'    => $keys,
      'ensure' => 'present'
    }),
  }


  package { 'mosh': ensure => installed, }

  yumrepo { "EPEL":
    baseurl  => "http://mirror.seas.harvard.edu/epel/6/${::architecture}/",
    descr    => "EPEL x86_64 mirrored from SEAS",
    enabled  => 1,
    gpgcheck => 0
   }

   #yumrepo { "EPEL":
   #   baseurl  => "http://mirror.seas.harvard.edu/epel/6/${::architecture}/",
   #   descr    => "EPEL x86_64 mirrored from SEAS",
   #   enabled  => 1,
   #   gpgcheck => 0
   #}
}
