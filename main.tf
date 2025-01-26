data "azurerm_client_config" "current" {}

data "azapi_resource_action" "quotas" {
  type                   = "${var.resource_provider}/locations@2023-02-01"
  resource_id            = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/providers/${var.resource_provider}/locations/${var.location}"
  action                 = "providers/Microsoft.Quota/quotas/?api-version=2023-02-01"
  method                 = "GET"
  response_export_values = ["*"]
}

locals {
  quotas_response = jsondecode(data.azapi_resource_action.quotas.output.value)
  quotas_map = [for quota in local.quotas_response :
    {
      name              = quota.name,
      limit             = quota.properties.limit.value
      resource_provider = var.resource_provider
    }
  ]
}
