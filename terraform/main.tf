
module "yandex_cloud_instance" {
  source = "./modules/tf-yc-instance"
  username = var.username
  ssh_public_key_path = var.ssh_public_key_path
  ssh_public_key_default_path = var.ssh_public_key_default_path
  zone = var.zone
  public_address_assigned = var.public_address_assigned
  subnet_id = module.yandex_cloud_network.yandex_vpc_subnets[var.zone].subnet_id
} 


module "yandex_cloud_network" {
    source = "./modules/tf-yc-network"
}
