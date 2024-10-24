### Overview
Sample code that uses AVM module for Key Vault and Virtual Machine Scale set:
- creates RSA private/public key pair using *tls_private_key* resource and stores the private key into Key Vault
- public key is used to configure SSH access into the VMSS instances
- uses a fork of AVM VMSS repository that contains a fix for https://github.com/Azure/terraform-azurerm-avm-res-compute-virtualmachinescaleset/issues/93