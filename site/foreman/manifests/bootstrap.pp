class { 'hiera':
  hierarchy => [
    'hostname/%{hostname}',
    'common',
  ],
} ->

file { '/etc/puppet/hieradata/hostname':
  ensure => 'directory',
  owner  => 'root',
  group  => 'root',
  mode   => 0755,
} ->

class { 'selinux':
  mode => 'permissive',
}

