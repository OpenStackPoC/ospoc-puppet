

#class { 'openstack::db::mysql':
#  mysql_root_password  => 'changeme',
#  keystone_db_password => 'changeme',
#  glance_db_password   => 'changeme',
#  nova_db_password     => 'changeme',
#  cinder_db_password   => 'changeme',
#  quantum_db_password  => 'changeme',
#  allowed_hosts        => ['10.255.73.%'],
#}

class { 'openstack::controller':
    public_address          => $::ipadress_eth10,
    public_interface        => 'eth10',
    private_interface       => 'eth10',
    internal_address        => $::ipadress_eth10,
    floating_range          => '192.168.101.64/28',
    fixed_range             => '10.0.0.0/24',
    multi_host              => false,
    network_manager         => 'nova.network.manager.FlatDHCPManager',
    admin_email             => 'admin@example.com',
    admin_password          => 'changeme',
    keystone_admin_token    => 'keystone_admin_token',
    keystone_db_password    => 'changeme',
    glance_user_password    => 'changeme',
    glance_db_password      => 'changeme',
    cinder_user_password    => 'changeme',
    cinder_db_password      => 'changeme',
    nova_user_password      => 'changeme',
    nova_db_password        => 'changeme',
    quantum_user_password   => 'changeme',
    quantum_db_password     => 'changeme',
    bridge_interface        => 'eth10',
    rabbit_password         => 'changeme',
    rabbit_user             => 'rabbit_user',
    secret_key              => 'secret_key',
    db_host                 => $::ipadress_eth10,
    metadata_shared_secret  => 'changeme',
}

