NSG = {
  nsg1 = {

    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.rg
  }

  security_rule = {
    rule1 = {
      name                       = "test123"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}



  
