output "vm_public_ip" {

  value = azurerm_public_ip.pip.ip_address

}

output "aks_cluster_name" {

  value = azurerm_kubernetes_cluster.aks.name

}