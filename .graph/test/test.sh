on_host(){
	mkdir -p /media/me/virtiofs/shared/vm1
}

in_vm(){
	manual_mount(){
		sudo mount -t virtiofs vm1 /home/me/vm1
	}

	auto_mount_fstab(){
		echo "vm1 /home/me/vm1 virtiofs rw,_netdev 0 0" | sudo tee -a /etc/fstab
		sudo mount -a
	}

	take_ownership(){
		sudo chown -R me:me vm1
	}
}



# from: https://www.tauceti.blog/posts/qemu-kvm-share-host-directory-with-vm-with-virtio/
