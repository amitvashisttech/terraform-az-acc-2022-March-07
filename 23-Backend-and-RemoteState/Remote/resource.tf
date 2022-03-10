# Create a resource group
resource "azurerm_resource_group" "example_rg_red" {
  name     = "example-Red-RG"
  location = "eastus"

 tags = { 
  owner = "Amit Vashist"
  # team  = "DevOps"
  project = "Automation"
  }
}
