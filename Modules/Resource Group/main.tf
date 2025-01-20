resource "azurerm_resource_group" "Rg_name" {
    name     = "ResourceGroupName"
    location = "East US"
    tags = {
        environment = "Production"
    }
  
}