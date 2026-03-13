data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                        = "quizapp-kv123"
  location                    = azurerm_resource_group.rg2.location
  resource_group_name         = azurerm_resource_group.rg2.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  soft_delete_retention_days = 7

  purge_protection_enabled = false
}