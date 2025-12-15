
variable "firewall" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name            = string
    sku_tier            = string

    ip_configuration = {
      name                 = string
      subnet_id            = string
      public_ip_address_id = string
    }
  }))
}


variable "subnets" {
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
  }))
}

variable "pips" {
  

  type = map(object(
    {
      name                = string
      resource_group_name = string
      location            = string
      allocation_method   = string
   } ))

}
