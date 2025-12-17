
vm = {
  vm1 = {
    vm_name             = "f-vm"
    location            = "japaneast"
    resource_group_name = "ram"

    virtual_network_name = "vnetrs"
    subnet_name          = "ram"
    public_ip_name       = "PIP2"
    nic_name             = "f-nic"

    size     = "Standard_D2s_v3"
    keyvault = "prskv12"


    script_name       = "nginx.sh"
    pw_authentication = false

    os_name              = "osdisk1"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  # vm2 = {
  #   vm_name             = "b-vm"
  #   location            = "Japaneast"
  #   resource_group_name = "ram"

  #   virtual_network_name = "vnetrs"
  #   subnet_name          = "shyam"
  #   public_ip_name       = "PIP3"
  #   nic_name             = "b-nic"

  #   size     = "Standard_F2"
  #   keyvault = "prskv12"

  #   script_name       = "nginx.sh"
  #   pw_authentication = false

  #   os_name              = "osdisk2"
  #   caching              = "ReadWrite"
  #   storage_account_type = "Standard_LRS"

  #   publisher = "Canonical"
  #   offer     = "0001-com-ubuntu-server-jammy"
  #   sku       = "22_04-lts"
  #   version   = "latest"
  # }
}



KVS = {
  vm1 = {
    username_name  = "vm1-username"
    username_value = "fvmuser"
    password_name  = "vm1-password"
    password_value = "Factor@666666"
  }

  vm2 = {
    username_name  = "vm2-username"
    username_value = "bvmuser"
    password_name  = "vm2-password"
    password_value = "Factor@555555"
  }
}


keyvault = {
  KV1 = {

  name                        = "prskv12"
  location                    = "japaneast"
  resource_group_name         = "ram"
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  key_permissions = [
    "Get", "Create", "List",
  ]
  secret_permissions = [
    "Get", "Set", "List", "Delete"
  ]
  storage_permissions = [
    "Get", "List",
  ]


}

}
