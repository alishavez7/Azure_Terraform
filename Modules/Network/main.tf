resource "azurerm_virtual_network" "Vnet_name" {
    name                = "var.Vnet_name"
    resource_group_name = azurerm_resource_group.RG_name.name
    location            = azurerm_resource_group.RG_name.location
    address_space       = "var.VnetAddressSpace"
  
}
resource "azurerm_subnet" "Subnet_name" {
    name                 = "var.Subnet_name"
    resource_group_name  = azurerm_resource_group.RG_name.name
    virtual_network_name = azurerm_virtual_network.Vnet_name.name
    address_prefixes     = "var.SubnetAddressPrefix"
  
}