class { 'openstack_network': } ->

class { 'openstack_mirrors': } ->

class { 'epel': } ->

class { 'openstack_repos': } ->

# package { 'foreman-installer': } ->
package { 'foreman-installer': } ->

package { 'openstack-foreman-installer': }
