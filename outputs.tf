output "result" {
  value = data.azapi_resource_action.quotas.output
}
output "available" {
  value = { for x, y in local.quotas_map : x => y if y > 0 }
}
output "unavailable" {
  value = { for x, y in local.quotas_map : x => y if y == 0 }
}
output "available_names" {
  value = [for x, y in local.quotas_map : x if y > 0]
}
output "unavailable_names" {
  value = [for x, y in local.quotas_map : x if y == 0]
}