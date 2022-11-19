resource "yandex_compute_instance" "vm-1" {
    name = var.vm1-name
    zone = var.zone
    platform_id = var.platform_id


    resources {
        cores  = var.cores
        memory = var.memory
    }

    scheduling_policy {
    preemptible = var.preemptible
  }

    boot_disk {
        initialize_params {
            image_id = var.image_id
            size = var.disk_size
        }
    }

    network_interface {
        
        subnet_id = var.subnet_id
        nat       = var.public_address_assigned
    }

    

    metadata = {
        serial-port-enable = var.serial_console_enable
        ssh-keys = "ubuntu:${file(var.ssh_public_key_default)}"
        user-data = data.template_file.user_data.rendered
    }
}

data "template_file" "user_data" {
        template = file("./m-data/u-data.txt")

        vars = {
            username       = var.username
            ssh_public_key = file(var.ssh_public_key)
        }
    }


