resource "azurerm_resource_group" "testrg" {

  count    = length(local.rg_og) > 0 ? 4 : 0
  name     = local.rg_og[count.index].rg_name
  location = local.rg_og[count.index].location


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