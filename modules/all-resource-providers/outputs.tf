output "all" {
  value = flatten([
    for q in module.quotas : q.all
  ])
}