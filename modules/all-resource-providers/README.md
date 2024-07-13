The `all-resource-providers` module provides an easy way to retrieve quota information for all supported Azure Resource Providers within a specified Azure region.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.74.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_provider"></a> [resource\_provider](#module\_resource\_provider) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The Azure region for which to retrieve the Quota. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all"></a> [all](#output\_all) | n/a |
| <a name="output_all_names"></a> [all\_names](#output\_all\_names) | n/a |
| <a name="output_available"></a> [available](#output\_available) | n/a |
| <a name="output_available_names"></a> [available\_names](#output\_available\_names) | n/a |
| <a name="output_unavailable"></a> [unavailable](#output\_unavailable) | n/a |
| <a name="output_unavailable_names"></a> [unavailable\_names](#output\_unavailable\_names) | n/a |
<!-- END_TF_DOCS -->