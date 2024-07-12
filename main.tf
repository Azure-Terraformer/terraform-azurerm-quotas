data "azurerm_client_config" "current" {}

data "azapi_resource_action" "quotas" {
  type                   = "Microsoft.Compute/locations@2023-02-01"
  resource_id            = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/providers/Microsoft.Compute/locations/${var.location}"
  action                 = "providers/Microsoft.Quota/quotas/?api-version=2023-02-01"
  method                 = "GET"
  response_export_values = ["*"]
}

locals {
  quotas_response = jsondecode(data.azapi_resource_action.quotas.output).value
  quotas_map      = { for quota in local.quotas_response : quota.name => quota.properties.limit.value }
}