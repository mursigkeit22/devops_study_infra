## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.61.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_yandex_cloud_instance"></a> [yandex\_cloud\_instance](#module\_yandex\_cloud\_instance) | ./modules/tf-yc-instance | n/a |
| <a name="module_yandex_cloud_network"></a> [yandex\_cloud\_network](#module\_yandex\_cloud\_network) | ./modules/tf-yc-network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | The ID of Cloud to apply any resources to | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | The Folder ID to operate under | `string` | n/a | yes |
| <a name="input_public_address_assigned"></a> [public\_address\_assigned](#input\_public\_address\_assigned) | Assigned for instance public address, that is used to access the Internet through NAT | `bool` | `true` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | path to file with ssh public key for user which is defined with 'username' variable | `string` | n/a | yes |
| <a name="input_ssh_public_key_default"></a> [ssh\_public\_key\_default](#input\_ssh\_public\_key\_default) | path to file with ssh public key for default VM user | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | Security token used for authentication in the Yandex Cloud | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | User with this username will be created on VM with sudo access | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Availability zone to operate under. Possible values: ru-central1-a, ru-central1-b, ru-central1-c | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address"></a> [external\_ip\_address](#output\_external\_ip\_address) | n/a |
| <a name="output_internal_ip_address"></a> [internal\_ip\_address](#output\_internal\_ip\_address) | n/a |
