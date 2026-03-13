resource "azurerm_resource_group" "rg" {
    name = var.rg-name
    location = var.rg-location
  
}

resource "azurerm_resource_group" "rg2" {
    name = var.rg2-name
    location = var.rg2-location
  
}
