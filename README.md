# Postgres-HA-Tutorial

Instructions and commands to deploy Postgresql-9.5 on 2 ubuntu 16.04 nodes
with pgpool2 in master-slave mode and configured failover

Cases:
1. master goes down > automatic failover
If we want our master back, as standby server
we must reinitialize replication:

On OldMaster run:
sudo -u postgres /etc/postgresql/9.5/main/replscripts/initiate_replication.sh -f -H $HOSTNAME -P 5433 -p reppassword
password: reppassword
There $HOSTNAME is your current master hostname

/etc/postgresql/9.5/main/replscripts/attach_node.sh
