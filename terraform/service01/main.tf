module "rg" {
  source = "../modules/azurerm.rg"

  name     = var.rg_name
  location = var.location
}

module "sa" {
  source = "../modules/azurerm.storageaccount"

  name     = var.sa_name
  rg_name  = module.rg.name
  location = module.rg.location
}

module "sa-container-01" {
  source = "../modules/azurerm.sacontainer"

  name    = "${var.sa_cntr_name}01"
  sa_name = module.sa.name
}

# module "sa-container-02" {
#   source = "../modules/azurerm.sacontainer"

#   name    = "${var.sa_cntr_name}02"
#   sa_name = module.sa.name
# }