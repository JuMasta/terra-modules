
resource "azurerm_virtual_network" "aks" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_spaces

  tags = var.tags

}

resource "azurerm_subnet" "aks" {

  for_each             = var.subnets
  resource_group_name  = azurerm_virtual_network.aks.resource_group_name
  virtual_network_name = azurerm_virtual_network.aks.name
  name                 = each.key
  address_prefixes     = each.value["address_prefixes"]
}

