Ansible Multi-Host Environment

To be able to:
Run nodes on on 2 separate host.
Run control node on both hosts, or only where it is needed.
Reach every node from each host/control node. This has to be done with DHCP.
Prepare the control nodes: provision ansible, inject the neccesry ssh keys everywhere.

TODO:
* Try vagrant cns plugin: https://github.com/BerlinVagrant/vagrant-dns
