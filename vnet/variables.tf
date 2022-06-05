variable "environment_name" {
  default = "development"
}



variable "vnet_name" {
  type    = string
  default = "default"
}

variable "resource_group_name" {
  type    = string
  default = "default"
}

variable "location" {
  type        = string
  description = "Resource group locataion where create the cluster"
  default     = "UK South"
}

variable "address_spaces" {
  type = list(string)
}

variable "subnets" {
    type = map(object({
    address_prefixes = list(string)
  }))
}