output "cluster_id" {
  value = azurerm_kubernetes_cluster.cluster.id
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.cluster.kube_config
  # sensitive = true
}

output "kube_admin_config" {
  value = azurerm_kubernetes_cluster.cluster.kube_admin_config
  # sensitive = true
}

output "outbound_ports_allocated" {
  value = azurerm_kubernetes_cluster.cluster.network_profile[0].load_balancer_profile[0].outbound_ports_allocated
}
