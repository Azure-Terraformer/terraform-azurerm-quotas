variable "location" {
  type = string
}
variable "resource_provider" {
  type = string

  validation {
    condition     = contains(local.valid_resource_providers, var.resource_provider)
    error_message = "Resource provider must be one of: ${join(", ", local.valid_resource_providers)}"
  }
}