resource "azurerm_firewall" "AZ_FW" {
  name                = var.firewall.name
  location            = var.firewall.location
  resource_group_name = var.firewall.resource_group_name
  sku_name            = var.firewall.sku_name
  sku_tier            = var.firewall.sku_tier

  ip_configuration {
    name                 = var.ip_configuration.name
    subnet_id            = data.azurerm_subnet.subnets[each.value.ip_configuration.subnet_name].id
    public_ip_address_id = data.azurerm_public_ip.pips[each.value.ip_configuration.pip_name].id
  }
}


