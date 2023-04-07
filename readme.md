# Virtiofs.hyper
Fast filesystem sharing in virtual machines!

# ToDo:
Problem: Only works if VM is shutdown first!  
Solution: Make it shut down the VM if running.


Problem: Not idempotent! Attempts to add virtio-device twice

`RUNNING HANDLER [Hyperion/common : Define VM from xml] *************************
fatal: [localhost]: FAILED! => {"changed": false, "msg": "libvirtError: XML error: Attempted double use of PCI Address 0000:07:00.0"}`