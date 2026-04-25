resource "azurerm_resource_group" "testrg" {

  
  name     = var.rg[0].rg_name
  location = var.rg[0].location


}

resource "azurerm_network_interface" "name" {

  location            = "southwestus"
  resource_group_name = "sdfsdf"
  name                = "stkl"

  ip_configuration {
    name = "sedesd"

    private_ip_address_allocation = "Static"

  }
}