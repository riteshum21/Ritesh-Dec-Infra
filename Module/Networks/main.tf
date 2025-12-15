resource "azurerm_virtual_network" "vnet" {
  for_each            = var.network
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  dynamic "subnet" {
    for_each = each.value.subnet
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.cidr
    }

  }
  # dynamic "encryption" {
  #   for_each = {}
  #   content  {
  #     enforcement = "Allowencrypted"
  #   }
  # }

  # subnet {
  #   name             = "sn2"
  #   address_prefixes = ["10.0.1.0/24"]
  # }
  # subnet {
  #   name             = "sn3"
  #   address_prefixes = ["10.0.2.0/24"]
  # }
}



