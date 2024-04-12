proxmox_url          = "https://edge-pve-01.homelab:8006/api2/json"
node                 = "edge-pve-01"
vm_id                = 901
build_name           = "ubuntu"
vm_name              = "ubuntu-22-04-server-raw"
iso_file             = "ubuntu-22.04.4-live-server-amd64.iso"
template_description = "Ubuntu server 22.04 template with the bare minimum configuration generated by Packer on {{ isotime `2006-01-02` }}."
network_adapters = {
  "01" = {
    bridge   = "vmbr0"
    model    = "virtio"
    vlan_tag = "100"
    firewall = false
  }
}
