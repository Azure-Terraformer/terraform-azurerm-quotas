locals {
  resource_providers = [
    "Microsoft.Compute",
    "Microsoft.Network",
    "Microsoft.Storage",
    "Microsoft.Web",
  ]
  valid_resource_providers = { for i, o in local.resource_providers : o => i }
}

module "resource_provider" {

  for_each = local.valid_resource_providers

  source            = "../../"
  location          = var.location
  resource_provider = each.key

}