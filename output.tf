output "public_ip_address" {
  value       = azurerm_public_ip.pip.ip_address
  description = "The public IP address of the VM"
}

output "vm_name" {
  value       = azurerm_linux_virtual_machine.vm.name
  description = "The name of the VM"
}

output "key_vault_name" {
  value       = azurerm_key_vault.vault.name
  description = "The name of the Key Vault"
}

output "key_vault_uri" {
  value       = azurerm_key_vault.vault.vault_uri
  description = "The URI of the Key Vault"
}

output "ssh_command" {
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.pip.ip_address}"
  description = "Command to SSH into the VM"
}
