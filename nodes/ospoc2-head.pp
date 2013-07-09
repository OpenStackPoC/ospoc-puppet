#
# Set all params via heira database, not here if possible
#


include openstack::db::mysql
include openstack::keystone
include openstack::auth_file
include openstack::glance
include openstack::nova::controller
include openstack::cinder::controller
include openstack::quantum
include openstack::horizon

include openstack::client
