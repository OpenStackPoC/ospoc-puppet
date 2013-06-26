# == Class: openstack-allinone
#
# Full description of class openstack-allinone here.
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
#  class { openstack-allinone:
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
class openstack-allinone {

  include common-poc

  class { 'openstack::all':
      public_address       => $::ipaddress,
      public_interface     => 'eth10',
      private_interface    => 'eth10',
      admin_email          => 'test@example.com',
      admin_password       => 'admin_password',
      keystone_admin_token => 'keystone_admin_token',
      nova_user_password   => 'nova_user_password',
      glance_user_password => 'glance_user_password',
      rabbit_password      => 'rabbit_password',
      rabbit_user          => 'rabbit_user',
      libvirt_type         => 'kvm',
      fixed_range          => '10.0.0.0/24',
    }
}

