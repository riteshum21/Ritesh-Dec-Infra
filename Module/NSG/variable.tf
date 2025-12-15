variable "NSG" {
    type = map(object({
        name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg

security_rule = map(any({
     name                       = string
    priority                   = mumber
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string

}))
}))
    
  }
 
