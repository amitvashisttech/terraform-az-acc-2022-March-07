variable "project-name" {
  default = "Terraform-Demo"
}

locals { 
  default_frontend_name = "${join("-", tolist([var.project-name, "backend"]))}"
}


locals { 
  some_tags = { 
     Owner = "DevOps Team"
     Project = "Terraform Automation"
     Env   = "Production"
     Name  = local.default_frontend_name
  }

}


resource "azurerm_resource_group" "example_rg_red" {
  name     = local.default_frontend_name
  location = "eastus"

 tags = local.some_tags 
}



resource "azurerm_resource_group" "example_rg_blue" {
  name     = local.default_frontend_name
  location = "eastus"

 tags = local.some_tags 
}
