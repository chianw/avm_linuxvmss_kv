output "location" {
  description = "The deployment region."
  value       = azurerm_resource_group.this.location
}

output "resource_group_name" {
  description = "The name of the Resource Group."
  value       = azurerm_resource_group.this.name
}

output "resource_id" {
  description = "The ID of the Virtual Machine Scale Set"
  value       = module.terraform_azurerm_avm_res_compute_virtualmachinescaleset.resource_id
}

output "virtual_machine_scale_set" {
  description = "All attributes of the Virtual Machine Scale Set resource."
  sensitive   = true
  value       = module.terraform_azurerm_avm_res_compute_virtualmachinescaleset.resource
}

output "virtual_machine_scale_set_id" {
  description = "The ID of the Virtual Machine Scale Set."
  value       = module.terraform_azurerm_avm_res_compute_virtualmachinescaleset.resource_id
}

output "virtual_machine_scale_set_name" {
  description = "The name of the Virtual Machine Scale Set."
  value       = module.terraform_azurerm_avm_res_compute_virtualmachinescaleset.resource_name
}

output "tls_private_key_pem" {
  description = "The private key used for the Virtual Machine Scale Set."
  value       = tls_private_key.this.private_key_pem
  sensitive   = true
}

output "tls_private_key_openssh" {
  description = "The private key used for the Virtual Machine Scale Set."
  value       = tls_private_key.this.private_key_openssh
  sensitive   = true
}