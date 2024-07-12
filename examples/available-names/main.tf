resource "azurerm_resource_provider_registration" "quotas" {
  name = "Microsoft.Quota"
}

module "quotas" {
  source   = "../../"
  location = "westus3"

  depends_on = [azurerm_resource_provider_registration.quotas]
}

output "result" {
  value = module.quotas.available_names
}