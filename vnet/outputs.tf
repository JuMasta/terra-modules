output "subnets_id" {
  value = {
    for k, ad in azurerm_subnet.aks : k => ad.id
  }
}