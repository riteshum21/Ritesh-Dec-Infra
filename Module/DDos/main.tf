

resource "azurerm_network_ddos_protection_plan" "ddos" {
   name                = var.ddos.name
  location            = var.ddos.location
  resource_group_name = var.ddos.resource_group_name
}



