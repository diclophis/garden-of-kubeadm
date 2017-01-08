# edit out AppArmor /etc/lxc/default.conf 

#sudo pkill -9 -f deserialize; sudo kill -9 $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet); echo $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet) || true
#sudo pkill -9 -f deserialize; sudo kill -9 $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet); echo $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet) || true
#sudo pkill -9 -f deserialize; sudo kill -9 $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet); echo $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet) || true
#sudo pkill -9 -f deserialize; sudo kill -9 $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet); echo $(pidof -o 1 init) $(pidof docker) $(pidof containerd) $(pidof dockerd) $(pidof kubelet) || true

set -e

#sudo modprobe br_netfilter
#sudo modprobe br_netfilter nf_nat
#sudo modprobe br_netfilter nf_nat xt_conntrack
#sudo modprobe xt_conntrack
#sudo modprobe nf_conntrack
#sudo modprobe ip_tables

sudo lxc-destroy --name deb001
sudo rm -Rf /var/tmp/deb001

sudo ./haconiwa create garden-of-kubeadm.haco

sudo ./haconiwa start garden-of-kubeadm.haco /sbin/init

#-A CAP_SYS_ADMIN,CAP_SYS_CHROOT,CAP_KILL,CAP_CHOWN,CAP_NET_BIND_SERVICE,CAP_MKNOD,CAP_SYS_RESOURCE,CAP_SYS_PTRACE,CAP_NET_ADMIN /sbin/init
