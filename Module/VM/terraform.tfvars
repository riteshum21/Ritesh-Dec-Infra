nicrs = {
  nicrs1 = {
    name                = "nicrs"
    location            = "Japaneast"
    resource_group_name = "rg1"
    ip_configuration = {
      name        = "ip_c1"
      subnet_name = "ram"
      pip_name    = "PIP2"
    }
  }
  nicrs2 = {
    name                = "nicrs2"
    location            = "Japaneast"
    resource_group_name = "rg1"
    ip_configuration = {

      name        = "ip_c2"
      subnet_name = "shyam"
      pip_name    = "PIP3"
    }
  }
}


subnets = {
  ram = {
    name                 = "ram"
    virtual_network_name = "vnetrs"
    resource_group_name  = "rg1"
  }
  shyam = {
    name                 = "shyam"
    virtual_network_name = "vnetrs"
    resource_group_name  = "rg1"
  }
}

pips = {
  PIP2 = {
    name                = "PIP2"
    resource_group_name = "rg1"
    location            = "japaneast"
    allocation_method   = "Static"
  }
  PIP3 = {
    name                = "PIP3"
    resource_group_name = "rg1"
    location            = "japaneast"
    allocation_method   = "Static"
} 
}




vms = {
  vm1 = {
    name                  = "fvmrs"
    resource_group_name   = "rg1"
    location              = "japaneast"
    size                  = "Standard_F2"
    admin_username        = "rsvm1"
    admin_password        = "Factor@123456"
    disable_password_authentication  = "false"
    network_interface_ids = ["nicrs1"]
    os_disk = {
      name                 = "os3"
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
  } }

  vm2 = {
    name                  = "bvmrs"
    resource_group_name   = "rg1"
    location              = "japaneast"
    size                  = "Standard_F2"
    admin_username        = "rsvm2"
    admin_password        = "Factor@123456"
    disable_password_authentication  = "false"
    network_interface_ids = ["nicrs2"]
    os_disk = {
      name                 = "os4"
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}
