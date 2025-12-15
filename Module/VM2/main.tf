

resource "azurerm_network_interface" "nicpr" {
  for_each            = var.vm
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnets[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pips[each.key].id
  }
}


resource "azurerm_linux_virtual_machine" "vm" {
  for_each                        = var.vm
  name                            = each.value.vm_name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = each.value.size  
  admin_username = data.azurerm_key_vault_secret.username[each.key].value
  admin_password = data.azurerm_key_vault_secret.password[each.key].value
  custom_data                     = base64encode(file("${each.value.script_name}"))
  disable_password_authentication = each.value.pw_authentication
  network_interface_ids = [
    azurerm_network_interface.nicpr[each.key].id,
  ]


  os_disk {
    name                 = each.value.os_name
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}
