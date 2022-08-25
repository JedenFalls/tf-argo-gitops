terraform {

  required_version = ">=1.2.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.19.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-gitops-tfstate"
    storage_account_name = "sagitopstfstate"
    container_name       = "tfstate"
    key                  = "service02.tfstate"
  }
}

provider "azurerm" {
  features {}
}
