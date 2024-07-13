module "crp" {
  source            = "Azure-Terraformer/quotas/azurerm"
  version           = "1.1.0"
  location          = "westus3"
  resource_provider = "Microsoft.Compute"
}

module "westus3" {
  source   = "Azure-Terraformer/quotas/azurerm//modules/all-resource-providers"
  version  = "1.1.0"
  location = "westus3"
}

output "crp" {
  value = module.crp.available
}
output "westus3" {
  value = module.westus3.all
}