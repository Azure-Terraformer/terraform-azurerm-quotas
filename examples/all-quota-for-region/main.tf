
module "quotas" {
  source   = "../../modules/all-quota-for-region"
  location = "westus3"
}

output "result" {
  value = module.quotas.all
}