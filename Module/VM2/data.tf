data "azurerm_subnet" "subnets" {
  for_each = var.vm
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}


data "azurerm_public_ip" "pips" {
    for_each = var.vm
  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault" "keyvault" {
  name                = var.keyvault["KV1"].name
  resource_group_name = var.keyvault["KV1"].resource_group_name
}

data "azurerm_key_vault_secret" "username" {
  for_each     = var.KVS
  name         = each.value.username_name
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

data "azurerm_key_vault_secret" "password" {
  for_each     = var.KVS
  name         = each.value.password_name
  key_vault_id = data.azurerm_key_vault.keyvault.id
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