Ansible Multi-Host Environment

Run the nodes on 2 separate hosts (different physical machines).
Run a control node on a single machine.
Each node writes its ip address + hostname into a file in a central, shared location (eg: NAS).
After all the node has finished provisioning, the control node can pull the shared hosts file, and update its /etc/hosts with the ip addresses and hostnames of the other nodes.
After this the control node, and also ansible on it can ping all the nodes using their pre-defined hostnames.  
  
(1) Switch to ansible-multi-host/host1 on one machine, and to ansible-multi-host/host2 on the other machine. Each folders has an own Vagrantfile, for the actual machine.
  
(2) Start the nodes on both machine using. Note: you want to start one of the control nodes first, where the clear of the shared host file is enabled. This is default on host1.  
$ vagrant up  
  
(3) Wait for all the nodes to start in both machines.  
  
(4) Login to any of the control nodes using any of the following.  
on Host1:  
$ vagrant ssh control1  
on Host2:  
$ vagrant ssh control2  
  
(5) When first time logged in, run the following script to update the local /etc/hosts file:  
$ /synced/scripts/ansible/import-hosts.sh'  
  
(6) Then add the private ssh key to the keyring:  
$ eval $(ssh-agent -s)  
$ ssh-add ~/.ssh/vagrant  
To check if it is properly added:  
$ ssh-add -l  
  
(7) Ping all the nodes using Ansible:  
$ cd /synced/ansible/ad-hoc  
$ ansible -m ping all  
  
