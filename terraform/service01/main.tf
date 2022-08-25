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
