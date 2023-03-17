output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.demo_terraform_vm[*].public_ip_address
}

output "tls_private_key" {
  value     = tls_private_key.azureuser_ssh_key.private_key_pem
  sensitive = true
}
