module "ocp-dhcp" {
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
