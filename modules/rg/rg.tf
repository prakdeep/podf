resource "azurerm_resource_group" "testrg" {

  
  name     = var.rg[0].rg_name
  location = var.rg[0].location


}

