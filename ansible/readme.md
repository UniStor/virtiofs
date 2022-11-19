# Do
<bounty>
Make Idempotent!
</bounty>

Currently breaks if run twice:

RUNNING HANDLER [Hyperion/common : Define VM from xml] *****************************************************
fatal: [localhost]: FAILED! => {"changed": false, "msg": "libvirtError: XML error: Attempted double use of PCI Address 0000:07:00.0"}
