# ===============
# Variables
# ===============

variable "vm_1_name" {
  description = "VM name"
  type = string
  default = "vm-kittygram"
}

variable "image_family" {
  description = "Type of operating system"
  type = string
  default = "ubuntu-2204-lts"
}

variable "platform_id" {
  description = "Types of physical processors"
  type = string
  default = "standard-v1"
}

variable "cores" {
  description = "Number of cores"
  type = number
  default = 2
}

variable "memory" {
  description = "Number of memory"
  type = number
  default = 4
}

variable "disk_type" {
  description = "Disk type"
  type = string
  default = "network-hdd"
}

variable "disk_size" {
  description = "Boot disk size"
  type = number
  default = 10
}

variable "nat" {
  description = "Enable NAT for network interface"
  type = bool
  default = true
}

variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "infra-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = object({
    name   = string
    zone   = string
    prefix = string
  })
  default = {
    name   = "infra-subnet-a"
    zone   = "ru-central1-a"
    prefix = "10.129.1.0/24"
  }
}

variable "zone" {
  description = "YC Region name"
  type = string
  default = "ru-central1-a"
}

variable "ssh_key" {
  description = "SSH Public Key"
  type = string
}

variable "cloud_id" {
  description = "Cloud ID"
  type = string
}

variable "folder_id" {
  description = "Folder ID"
  type = string
}