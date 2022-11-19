
module "yandex_cloud_instance" {
  source = "./modules/tf-yc-instance"
  username = var.username
  ssh_public_key = var.ssh_public_key
  ssh_public_key_default = var.ssh_public_key_default
  zone = var.zone
  public_address_assigned = var.public_address_assigned
  subnet_id = module.yandex_cloud_network.yandex_vpc_subnets[var.zone].subnet_id
} 


module "yandex_cloud_network" {
    source = "./modules/tf-yc-network"
}
