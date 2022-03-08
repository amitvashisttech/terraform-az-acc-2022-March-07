/*
output "PIP" {
  value = azurerm_public_ip.examplepublicip
}
*/


output "my_vm_public_ip" {
  value = azurerm_public_ip.examplepublicip.ip_address
}


output "RG" {
  value = azurerm_resource_group.example_rg.name
}


output "Pvt_IP" {
  value = azurerm_network_interface.example_rg.private_ip_address
}

output "Storage_Acc_Detials" {
 value = azurerm_network_interface.example_rg.internal_domain_name_suffix
}
