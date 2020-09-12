#variable "ovirt_url" { default =  "" }
#variable "ovirt_username" { default =  "" }
#variable "ovirt_password" { default =  "" }
#variable "storage_domain_id" { default =  "" }
#variable "cluster_id" { default =  "" }
#variable "vm_name" { default =  "" }
#variable "vm_hostname" { default =  "" }
#variable "vm_dns_search" { default = "" }
#variable "vm_dns_servers" { default =  "" }
#variable "vm_template_id" { default =  "" }
#variable "vm_memory" { 
#  type = number 
#  default =  "4096" 
#}
#variable "vm_cpu_cores" { 
#  type = number 
#  default =  "2" 
#}


module "ocp-lb" {
  source		= "./modules/vms"
  cluster_id		= var.cluster_id
  vm_name		= var.vm_name
  vm_hostname		= var.vm_hostname
  vm_dns_search		= var.vm_dns_search
  vm_dns_servers	= var.vm_dns_servers    
  vm_memory		= var.vm_memory
  vm_cpu_cores		= var.vm_cpu_cores
  vm_template_id	= var.vm_template_id
} 
