# provision-ovirt-vms-using-terraform
This is a utility to test using the terraform ovirt provider from https://github.com/oVirt/terraform-provider-ovirt to create modules used to provision vms. 
To run the various modules you have to use a workaround due to some issue with the vm module being confused when used more than once in the same state. 
The workaround is to apply the configuration as follows
```
 terraform apply -var-file=dns.auto.tfvars -auto-approve -state-out=dns-terraform.state
terraform apply -var-file=dhcp.auto.tfvars -auto-approve -state-out=dhcp-terraform.state
terraform apply -var-file=lb.auto.tfvars -auto-approve -state-out=lb-terraform.state
terraform apply -var-file=registry.auto.tfvars -auto-approve -state-out=registry-terraform.state
```
What the above command does is using a different state for each of the module thereby avoiding the issue. 
Terraform still throws and error related to a conflict because the terraform still  thinks that it is supposed to add all modules even though it is only being required to create one via the var-file argument. 
