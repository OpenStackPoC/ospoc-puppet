ospoc-puppet
============

## Puppet apply

This has been setup to be an masterless, all-in-one puppet config, with local config dir `conf` and hiera database in `hieradata`.

Specific manifests for work in progress nodes are in `nodes/`.  Helper scripts are in `bin/`.

Most parameters should be set via hiera in `hieradata/common.yaml` and nodes specific values set in `hieradata/nodesname.yaml`.

In general, manifests will mostly be lists of classes to include.

To run execute

    $ ./bin/puppet-apply nodes/mynode.pp

which will use local puppet configs and hiera files in `conf/`. The simple script `bin/deep-clean` should wipe out the output of a puppet run, 
making sure that when run again the code will be fully exercised.

## Puppet Code

## Pre-Commit Hook
To use the pre-commit hook supplied (taken from another github repo, url to be supplied, link the hook to .git/hooks with this command
ln -s pre-commit.puppet-lint .git/hooks/pre-commit
