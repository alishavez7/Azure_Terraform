
module "ResourceGroup" {
  source = "./Modules/ResourceGroup"
  Rg_name = var.Rg_name
  location = var.location
  
}
