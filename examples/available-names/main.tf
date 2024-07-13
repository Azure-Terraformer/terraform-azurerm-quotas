resource "azurerm_resource_provider_registration" "quotas" {
  name = "Microsoft.Quota"
}

module "quotas" {
  source            = "../../"
  location          = "westus3"
  resource_provider = "Microsoft.Compute"
}

output "result" {
  value = module.quotas.all
}