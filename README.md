# Netboot (PXE) setup for Raspberry Pi

## Setup

1. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).
2. Adjust [`hosts.ini`](hosts.ini) and add the host name of the installation target, configure installation path and Raspberry Pi clients in [`config.yml`](config.yml).
3. Run the playbook: `./setup-raspberry-pxe-boot.yml`.


## Current state/Known issues  

At the moment, I'm stuck at mounting the root FS via NFS. I'm not sure if this is caused by a specific NFS setting or general issue with my Synology NAS (where I was running the pxe server from) or something related to the code.

**Hardware:** Raspberry Pi 3 Model B Rev 1.2  
**OS:** RaspiOS Lite ARM64  
**Kernel:** 5.10.17

**Boot log**:
```
Sending DHCP requests ..., OK
IP-Config: Got DHCP answer from 192.168.178.1, my address is 192.168.178.24
IP-Config: Complete:
     device=eth0, hwaddr=b8:27:eb:e6:f9:aa, ipaddr=192.168.178.24, mask=255.255.255.0, gw=192.168.178.1
     host=192.168.178.24, domain=fritz.box, nis-domain=(none)
     bootserver=192.168.178.1, rootserver=192.168.178.38, rootpath=
     nameserver0=192.168.178.1
     ntpserver0=192.168.178.1
VFS: Unable to mount root fs via NFS.
```

I created a [Stack Exchange](https://unix.stackexchange.com/questions/663960/network-boot-unable-to-mount-root-fs-via-nfs) posting, but so far I had no luck solving this issue. If you find the code working for you or you notice some detail I missed, I'd be super happy to hear from you.


## Contributing

Contributions and bug fixes are always welcome!


## License

[MIT](LICENSE)
