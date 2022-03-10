# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
    }
  }
  backend "azurerm" { 
    resource_group_name  = "tstate"
    storage_account_name = "tstate27094"
    container_name       = "tstate"
    key                  = "amitvashist7"
  }
}
