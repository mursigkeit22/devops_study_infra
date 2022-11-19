output "internal_ip_address" {
    value = module.yandex_cloud_instance.internal_ip_address
    description = "internal ip address of created VM"
}

output "external_ip_address" {
    value = module.yandex_cloud_instance.external_ip_address
    description = "external ip address of created VM"
}
