# Raspberry PI

## Requirements

* Raspberry PI 4B
* MicroSD-Card + card-reader
* Raspberry Pi Imager

## Setup

1. flash SD-Card using `Raspberry Pi Imager`
   1. choose `Raspberry PI OS Lite 64bit`
   2. configure OS using Wizard
      1. hostname
      2. initial credentials
      3. ssh (copy public keys from `<PROJECT_PATH>/authorized_keys`)
      4. locals
2. enable cgroups
   1. open `sd-card/bootfs/cmdline.txt`
   2. append at the end: `cgroup_memory=1 cgroup_enable=memory`
3. (optionally) set static ip address in `sd-card/rootfs/etc/dhcpcd.conf`


## References

* https://docs.k3s.io/advanced#raspberry-pi
* https://wiki.archlinux.org/title/dhcpcd#Static_profile