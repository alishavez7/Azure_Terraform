
module "Network" {
  source = "./Modules/Network"
  Rg_name = "var.Rg_name"
  location = "var.location"

}


module "Compute" {
  source = "./Modules/Compute"
    Rg_name = "var.Rg_name"
  location = "var.location"
  subnet_id = "module.Network.subnet_id"
}