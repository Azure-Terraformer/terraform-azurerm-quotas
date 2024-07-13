locals {
  valid_resource_providers = [
    "Microsoft.Compute",
    "Microsoft.Network",
    "Microsoft.Storage",
    "Microsoft.Web",
  ]
  valid_resource_providers_map = { for idx, rp in local.valid_resource_providers : rp => idx }
}

module "quotas" {

  for_each = local.valid_resource_providers_map

  source            = "../../"
  location          = var.location
  resource_provider = each.key

}