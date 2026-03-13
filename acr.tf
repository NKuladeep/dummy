resource "azurerm_container_registry" "acr" {
  name                = "quizappacr123"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku           = "Basic"
  admin_enabled = true
}