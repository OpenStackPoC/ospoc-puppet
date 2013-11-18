#
# Set all params via heira database, not here if possible
#


include openstack::db::mysql
include openstack::keystone
include openstack::auth_file

include openstack::client
