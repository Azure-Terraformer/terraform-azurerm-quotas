output "all" {
  value = flatten([
    for q in module.resource_provider : q.all
  ])
}
output "available" {
  value = flatten([
    for q in module.resource_provider : q.available
  ])
}
output "unavailable" {
  value = flatten([
    for q in module.resource_provider : q.unavailable
  ])
}
output "all_names" {
  value = { for rp, i in local.valid_resource_providers : rp => module.resource_provider[rp].all_names }
}
output "available_names" {
  value = { for rp, i in local.valid_resource_providers : rp => module.resource_provider[rp].available_names }
}
output "unavailable_names" {
  value = { for rp, i in local.valid_resource_providers : rp => module.resource_provider[rp].unavailable_names }
}