output "vnet_id" {
    value = azurerm_virtual_network.VNet_name.id
}
output "subnet_id" {
  value = azurerm_subnet.Subnet_name.id
  
}