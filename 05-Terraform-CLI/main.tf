# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  #  subscription_id = "xxxxxxxxxxxxxxxxxxxxxx"
  #  client_id = "xxxxxxxxxxxxxxxxxxxxxx"
  #  client_secret = "xxxxxxxxxxxxxxxxxxxxxx"
  #  tenant_id = "xxxxxxxxxxxxxxxxxxxxxx"
}


# Create a resource group
resource "azurerm_resource_group" "example_rg_blue" {
  name     = "Blue-RG"
  location = "eastus"

  tags = {
    owner = "Amit Vashist"
    team  = "DevOps"
    project = "Automation"
  }
}



/*
# Multi-Line Comment Example
# Create a resource group
resource "azurerm_resource_group" "example_rg_red" {
  name     = "Red-RG"
  location = "eastus"

  tags = {
    owner = "Amit Vashist"
    # team  = "DevOps"
    project = "Automation"
  }
}
*/
