variable "environment_name" {
  type = string
  default = "development"
}

variable "cluster_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}


variable "location" {
  type = string
}


variable "dns_prefix" {
  type = string
}

variable "vnet_subnet_id" {
  type = string
}

variable "pod_subnet_id" {
  type = string
}

# variable "admin_group_object_ids" {
#   type = list(string)
# }

variable "vm_size" {
  type    = string
  default = "standard_d2a_v4"
}

