output "result" {
  value = data.azapi_resource_action.quotas.output
}
output "all" {
  value = [for q in local.quotas_map : q]
}
output "available" {
  value = [for q in local.quotas_map : q if q.limit > 0]
}
output "unavailable" {
  value = [for q in local.quotas_map : q if q.limit == 0]
}
output "all_names" {
  value = [for q in local.quotas_map : q.name]
}
output "available_names" {
  value = [for q in local.quotas_map : q.name if q.limit > 0]
}
output "unavailable_names" {
  value = [for q in local.quotas_map : q.name if q.limit == 0]
}