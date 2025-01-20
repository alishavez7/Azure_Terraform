resource "azurerm_resource_group" "Rg_name" {
  name     = "var.Rg_name"
  location = "var.location"
  tags = {
    environment = "Production"
  }

}