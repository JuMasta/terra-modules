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


output "default_node_pool_id" {

  value = azurerm_kubernetes_cluster.cluster.default_node_pool.id

}
