variable "token" {
    type =    string
    description = "Security token used for authentication in the Yandex Cloud"
    nullable = false
}

variable "cloud_id" {
    type =    string
    description = "The ID of Cloud to apply any resources to"
    nullable = false
}

variable "folder_id" {
    type =    string
    description = "The Folder ID to operate under"
    nullable = false
}
variable "zone" {
    type    =    string
    default = "ru-central1-a"
    description = "Availability zone to operate under. Possible values: ru-central1-a, ru-central1-b, ru-central1-c"
    nullable = false

}
variable "public_address_assigned" {
  default = true
  type = bool
  description = "Assigned for instance public address, that is used to access the Internet through NAT"
  nullable = true
}

variable "username" {
  type = string
  description = "User with this username will be created on VM with sudo access "
  nullable = false
}

variable "ssh_public_key" {
  type = string
  description = "path to file with ssh public key for user which is defined with 'username' variable"
  nullable = true
}

variable "ssh_public_key_default" {
  type = string
  description = "path to file with ssh public key for default VM user"
  nullable = true
}
