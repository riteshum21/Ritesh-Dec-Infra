variable "cdn_profile" {
  type = object({
    name                = string
    location            = string
    resource_group_name = string
    sku                 = string
  })
}

variable "cdn_endpoint" {
  type = object({
    name      = string
    origin    = string
    resource_group_name = string
    profile_name = string
     location            = string
  })
}

variable "cdn_custom_domain" {
  type = object({
    name      = string
    host_name = string
  })
}
