resource "azurerm_kubernetes_cluster" "aks" {

  name                = "devsecops-aks"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
  dns_prefix          = "devsecopsaks"

  default_node_pool {
    name                = "system"
    vm_size             = "Standard_D2s_v3"

    node_count          = 2
    auto_scaling_enabled = true

    min_count           = 1
    max_count           = 5
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }

}