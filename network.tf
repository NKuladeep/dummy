resource "azurerm_virtual_network" "vnet-1" {
  name                = var.vnet-name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet""subnet-1" {
    name             = var.subnet1-name
    address_prefixes = ["10.0.1.0/24"]
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet-1.name
}
resource "azurerm_subnet""subnet-2" {
    name             = var.subnet2-name
    address_prefixes = ["10.0.2.0/24"]
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet-1.name
}