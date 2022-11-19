variable "vm1-name" {
  default     = "chapter5-lesson2-valerie-shelgunova"
  type        = string
  description = "Name of the instance"
  nullable = true
} 

variable "zone" {
  type        = string
  description = "Availability zone where the instance resides"
  nullable = false
} 

variable "subnet_id" {
  type        = string
  description = " ID of the subnet to attach this interface to. The subnet must reside in the same zone where this instance created in"
  nullable = false
}

variable "platform_id" {
  default     = "standard-v1"
  type        = string
  description = "Type of the virtual machine to create."
  nullable = true
} 

variable "cores" {
  default     = 2
  type        = number
  description = "Number of CPU cores allocated for instance."
  nullable = false
} 

variable "memory" {
  default     = 2
  type        = number
  description = "Memory size allocated for instance."
  nullable = false
} 

variable "preemptible" {
  default     = true
  type        = bool
  description = "Preemptible compute instances are stopped at least once every 24 hours, and can be stopped at any time"
  nullable = true
} 

variable "image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "A disk image to initialize this disk from"
  nullable = false
} 

variable "disk_size" {
  default     = 35
  type        = number
  description = "Size of the disk in GB"
  nullable = true
} 

variable "serial_console_enable" {
  default = 1
  type = number
  description = "enable access to the serial console when creating a VM"
  nullable = true
}

variable "public_address_assigned" {
  type = bool
  description = "Assigned for instance public address, that is used to access the Internet through NAT"
  nullable = true
}

variable "username" {
  type = string
  description = "this user will be created on VM "
  nullable = false
}

variable "ssh_public_key" {
  type = string
  description = "ssh access for user <username>"
  nullable = true
}

variable "ssh_public_key_default" {
  type = string
  description = "ssh access for defalut VM user"
  nullable = true
}
