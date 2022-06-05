variable "alert_name" {

  type = string

}

variable "resource_group_name" {

  type = string

}

variable "scopes" {

  type = list(string)

}

variable "metric_name" {

  type = string

}

variable "aggregation" {
  type = string
}

variable "operator" {
  type = string
}

variable "threshold" {
  type = number
}


variable "dimension_name" {
  type = string
}
variable "dimension_operator" {
  type = string
}

variable "dimension_values" {
  type = list(string)
}

# variable "dimensions" {
#   type = map(object({
#     name     = string
#     operator = string
#     values   = list(string)
#   }))
# }

variable "frequency" {
  type    = string
  default = "PT5M"
}
