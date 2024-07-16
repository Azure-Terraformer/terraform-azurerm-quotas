# terraform-azurerm-quotas

This module uses the AzAPI provider to query the Azure Quota REST API to obtain the Quota for a given subscription within a given region.

https://learn.microsoft.com/en-us/rest/api/quota/quota/get?view=rest-quota-2023-02-01&tabs=HTTP
<!-- BEGIN_TF_DOCS -->

> [!IMPORTANT]
>
> Azure subscriptions are not enabled with the `Microsoft.Quota` resource provider by default.
>
> If you do not have Microsoft.Quota enabled, you will encounter a message like this.
>
> ```
> --------------------------------------------------------------------------------
> RESPONSE 400: 400 Bad Request
> ERROR CODE: MissingRegistrationForResourceProvider
> --------------------------------------------------------------------------------
>  {
>    "error": {
>      "code": "MissingRegistrationForResourceProvider",
>      "message": "The subscription is not in registered state for the resource provider: Microsoft.Quota."
>    }
>  }
> --------------------------------------------------------------------------------
> ```
>
> Use the following Azure CLI command to check if your subscription has the Quota provider enabled.
>
> ```bash
> az provider list --query "[?namespace=='Microsoft.Quota']" --output table
> Namespace        RegistrationState    RegistrationPolicy
> ---------------  -------------------  --------------------
> Microsoft.Quota  NotRegistered        RegistrationRequired
> ```
>
> If your subscription <u>does not</u> have the `Microsoft.Quota` provider enabled, then use this command to enable it:
>
> ```bash
> az provider register --namespace Microsoft.Quota
> ```
>
> Registration of the provider in Azure may take some time. 
>
> Use this command to check to see the status of the  provider registration.
>
> ```bash
> az provider list --query "[?namespace=='Microsoft.Quota']" --output table
> Namespace        RegistrationState    RegistrationPolicy
> ---------------  -------------------  --------------------
> Microsoft.Quota  Registering          RegistrationRequired
> 
> 
> az provider list --query "[?namespace=='Microsoft.Quota']" --output table
> Namespace        RegistrationState    RegistrationPolicy
> ---------------  -------------------  --------------------
> Microsoft.Quota  Registered           RegistrationRequired
> ```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.74.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | >= 1.9.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azapi_resource_action.quotas](https://registry.terraform.io/providers/azure/azapi/latest/docs/data-sources/resource_action) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_resource_provider"></a> [resource\_provider](#input\_resource\_provider) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all"></a> [all](#output\_all) | n/a |
| <a name="output_all_names"></a> [all\_names](#output\_all\_names) | n/a |
| <a name="output_available"></a> [available](#output\_available) | n/a |
| <a name="output_available_names"></a> [available\_names](#output\_available\_names) | n/a |
| <a name="output_resource_provider"></a> [resource\_provider](#output\_resource\_provider) | n/a |
| <a name="output_result"></a> [result](#output\_result) | n/a |
| <a name="output_unavailable"></a> [unavailable](#output\_unavailable) | n/a |
| <a name="output_unavailable_names"></a> [unavailable\_names](#output\_unavailable\_names) | n/a |
<!-- END_TF_DOCS -->