# terraform-opentelekomcloud-serviceaccount

Module to help create ServiceAccount and associated resources on OpenTelekomCloud

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.7 |
| <a name="requirement_opentelekomcloud"></a> [opentelekomcloud](#requirement\_opentelekomcloud) | ~>1.36 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_opentelekomcloud"></a> [opentelekomcloud](#provider\_opentelekomcloud) | 1.36.30 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [opentelekomcloud_identity_credential_v3.ak_sk](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_credential_v3) | resource |
| [opentelekomcloud_identity_group_membership_v3.group_membership](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_group_membership_v3) | resource |
| [opentelekomcloud_identity_group_v3.group](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_group_v3) | resource |
| [opentelekomcloud_identity_role_assignment_v3.rules](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_role_assignment_v3) | resource |
| [opentelekomcloud_identity_user_v3.user](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/identity_user_v3) | resource |
| [random_password.user_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ak_sk"></a> [ak\_sk](#input\_ak\_sk) | Whether to generate access key and secret key | `bool` | `false` | no |
| <a name="input_domain_id"></a> [domain\_id](#input\_domain\_id) | ID of the domain we are in | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Group AND user name | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Whether to set a password for the account | `bool` | `false` | no |
| <a name="input_role_ids"></a> [role\_ids](#input\_role\_ids) | Role IDs to assign | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | Access Key if ak\_sk is enabled for the module |
| <a name="output_id"></a> [id](#output\_id) | The ID of the service account |
| <a name="output_name"></a> [name](#output\_name) | The name of the service account |
| <a name="output_password"></a> [password](#output\_password) | Password if password is enabled for the module |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | Secret Key if ak\_sk is enabled for the module |
<!-- END_TF_DOCS -->
