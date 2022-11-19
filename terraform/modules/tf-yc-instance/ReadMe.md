## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_template"></a> [template](#provider\_template) | n/a |
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.vm-1](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [template_file.user_data](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cores"></a> [cores](#input\_cores) | Number of CPU cores allocated for instance. | `number` | `2` | no |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | Size of the disk in GB | `number` | `35` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | A disk image to initialize this disk from | `string` | `"fd80qm01ah03dkqb14lc"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Memory size allocated for instance. | `number` | `2` | no |
| <a name="input_platform_id"></a> [platform\_id](#input\_platform\_id) | Type of the virtual machine to create. | `string` | `"standard-v1"` | no |
| <a name="input_preemptible"></a> [preemptible](#input\_preemptible) | Preemptible compute instances are stopped at least once every 24 hours, and can be stopped at any time | `bool` | `true` | no |
| <a name="input_public_address_assigned"></a> [public\_address\_assigned](#input\_public\_address\_assigned) | Assigned for instance public address, that is used to access the Internet through NAT | `bool` | n/a | yes |
| <a name="input_serial_console_enable"></a> [serial\_console\_enable](#input\_serial\_console\_enable) | enable access to the serial console when creating a VM | `number` | `1` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | ssh access for user <username> | `string` | n/a | yes |
| <a name="input_ssh_public_key_default"></a> [ssh\_public\_key\_default](#input\_ssh\_public\_key\_default) | ssh access for defalut VM user | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of the subnet to attach this interface to. The subnet must reside in the same zone where this instance created in | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | this user will be created on VM | `string` | n/a | yes |
| <a name="input_vm1-name"></a> [vm1-name](#input\_vm1-name) | Name of the instance | `string` | `"chapter5-lesson2-valerie-shelgunova"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Availability zone where the instance resides | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address"></a> [external\_ip\_address](#output\_external\_ip\_address) | n/a |
| <a name="output_internal_ip_address"></a> [internal\_ip\_address](#output\_internal\_ip\_address) | n/a |
