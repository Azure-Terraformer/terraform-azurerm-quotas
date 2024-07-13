
module "quotas" {
  source   = "../../modules/all-resource-providers"
  location = "westus3"
}

output "result" {
  value = module.quotas.all_names
}