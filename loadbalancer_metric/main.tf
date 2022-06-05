resource "azurerm_monitor_metric_alert" "loadBalancers_metrics" {

  name                = var.alert_name
  resource_group_name = var.resource_group_name
  scopes              = var.scopes


  criteria {
    metric_namespace = "Microsoft.Network/loadBalancers"
    metric_name      = var.metric_name
    aggregation      = var.aggregation
    operator         = var.operator
    threshold        = var.threshold

    dimension {
      name     = var.dimension_name
      operator = var.dimension_operator
      values   = var.dimension_values
    }
  }

  frequency = var.frequency

}
