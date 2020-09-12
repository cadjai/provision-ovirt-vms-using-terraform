# Global
## literal constant values

variable "vm_name" {
  description = "A unique name for the VM"
  default     = ""
}
variable "cluster_id" {
  description = "The ID of cluster the VM belongs to"
  default     = ""
}
variable "vm_template_id" {
  description = "The name of the template the VM is created from"
  default     = ""
}
variable "vm_memory" {
  description = "The amount of memory allocated to the VM (in megabytes)"
  default     = "2048"
}
variable "vm_cpu_cores" {
  description = "The number of cores allocated to the VM"
  default     = "1"
}
variable "vm_cpu_sockets" {
  description = "The number of cpu sockets allocated to the VM"
  default     = "1"
}
variable "vm_cpu_threads" {
  description = "The number of cpu threads allocated to the VM"
  default     = "1"
}

# VM initialization

variable "vm_authorized_ssh_key" {
  description = "The ssh key to use for the vm if applicable"
  default     = ""
}
variable "vm_hostname" {
  description = "The hostname of the VM"
  default     = ""
}
variable "vm_timezone" {
  description = "The timezone configured for the VM when provisioned"
  default     = ""
}
variable "vm_user_name" {
  description = "The username for the VM"
  default     = ""
}
variable "vm_custom_script" {
  description = "Custom script used for the initialization of the VM through cloud-init"
  default     = ""
}
variable "vm_dns_search" {
  description = "The DNS search strings for the VM"
  default     = "lab.kitindy.net"
}
variable "vm_dns_servers" {
  description = "The DNS server to configure for the VM if applicable"
  default     = "192.168.5.50"
}

# Initialization - NIC Configuration
variable "vm_nic_device" {
  description = "The vNIC to apply to the network configuration for the VM"
  default     = ""
}
variable "vm_nic_boot_proto" {
  description = "The boot protocol for the vNIC configuration"
  default     = "dhcp"
}
variable "vm_nic_ip_address" {
  description = "The IP address assign to the vNIC if applicable"
  default     = ""
}
variable "vm_nic_gateway" {
  description = "The gateway for the vNIC if applicable"
  default     = ""
}
variable "vm_nic_netmask" {
  description = "The netmask to apply to the vNIC if applicable"
  default     = ""
}
variable "vm_nic_on_boot" {
  description = "The flag to indicate whether the vNIC will be activated on boot or not"
  default     = "true"
}
