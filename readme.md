# Virtiofs.hyper
Fast filesystem sharing in virtual machines!

# ToDo:
1. Problem: Only works if VM is shutdown first!  
Solution: Make it shut down the VM if running.

2. Problem: Cannot add 2 shares!  
reason: PCI bus is reused and conflicts ('0000:07:00.0')

Solution: have an Iterator variable that generates the PCI Address for XML!


3. Problem: Not idempotent! Attempts to add virtio-device twice

`RUNNING HANDLER [Hyperion/common : Define VM from xml] *************************
fatal: [localhost]: FAILED! => {"changed": false, "msg": "libvirtError: XML error: Attempted double use of PCI Address 0000:07:00.0"}`

Solution: should also be fixed by 2.