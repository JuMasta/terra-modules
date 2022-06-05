resource "azurerm_kubernetes_cluster" "cluster" {


  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = var.dns_prefix

  # azure_active_directory_role_based_access_control {
  #   managed                = true
  #   admin_group_object_ids = var.admin_group_object_ids
  #   azure_rbac_enabled     = true
  # }

  http_application_routing_enabled = false

  network_profile {
    network_plugin     = "azure"
    network_policy     = "calico"
    service_cidr       = "192.168.0.0/16"
    dns_service_ip     = "192.168.0.10"
    docker_bridge_cidr = "172.17.0.1/16"
  }


  default_node_pool {
    name                  = "default"
    vm_size               = var.vm_size
    node_count            = 1
    enable_auto_scaling   = false
    enable_node_public_ip = false
    vnet_subnet_id        = var.vnet_subnet_id
    pod_subnet_id         = var.pod_subnet_id

  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = var.environment_name
  }

}
