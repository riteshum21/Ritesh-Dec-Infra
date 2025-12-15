data "azurerm_subnet" "subnets" {
  for_each = var.subnets

  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}



data "azurerm_public_ip" "pips" {
    for_each = var.pips
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}






# data "azurerm_public_ip" "pip3" {
#   name                = var.pip3
#   resource_group_name = var.rg1
# }

# variable "sn1" {
#     default = "ram"
# }

# variable "sn3" {
# default = "shyam"

# }
# variable "network1" {
#   default = "vnetrs"
# }
# variable "rg1" {
#   default = "rg1"
# }
# variable "pip2" {
#   default = "PIP2"
# }

# variable "pip3" {
#   default = "PIP3"
# }