Inject SSH key to guest boxes

The goal is to use the same ssh keypair within all the boxes. 

(1) Generate ssh keypair using ssh-keygen
(2) Edit the public/private ssh key location in Vagrantfile
(3) During provision, the public key will be injected to all the boxes.
(4) Add the private key to ssh agent using ssh-add <private_key>
(5) Note: You may need to start the ssh agent first, using: eval `ssh-agent -s`. If you get an error on step (4) this is the solution.
(6) After this you can ssh to any guest using ssh vagrant@<ip-address>
(7) The private key can be used in further tools, eg: ansible.
