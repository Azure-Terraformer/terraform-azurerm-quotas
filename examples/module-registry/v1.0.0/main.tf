resource "azurerm_resource_provider_registration" "quotas" {
  name = "Microsoft.Quota"
}

module "quotas" {
  source   = "Azure-Terraformer/quotas/azurerm"
  version  = "1.0.0"
  location = "westus3"
}

output "result" {
  value = module.quotas.all
}