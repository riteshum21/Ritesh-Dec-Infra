resource "random_id" "server" {
  for_each = var.tm_profile

  keepers = {
    azi_id = 1
  }

  byte_length = 8
}

resource "azurerm_traffic_manager_profile" "tm_profile" {
  for_each = var.tm_profile

  name                   = random_id.server[each.key].hex
  resource_group_name    = each.value.resource_group_name
  traffic_routing_method = each.value.traffic_routing_method

  dns_config {
    relative_name = random_id.server[each.key].hex
    ttl           = 100
  }

  monitor_config {
    protocol                     = each.value.monitor_config.protocol
    port                         = each.value.monitor_config.port
    path                         = "/"
    interval_in_seconds          = each.value.monitor_config.interval_in_seconds
    timeout_in_seconds           = each.value.monitor_config.timeout_in_seconds
    tolerated_number_of_failures = each.value.monitor_config.tolerated_number_of_failures
  }

  tags = each.value.tags
}
