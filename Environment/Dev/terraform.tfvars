
ACR = {
  ACR1 = {
    name                = "containerRegistry1989"
    resource_group_name = "ram"
    location            = "Japaneast"
    sku                 = "Premium"
    admin_enabled       = false

    tags = {
      Created_by = "Ram"
    }
  }
}

aksrs = {
  aks = {
    name                = "aksrs"
    location            = "westus"
    resource_group_name = "ram"
    dns_prefix          = "aksdns"

    identity = {
      type = "SystemAssigned"
    }

    default_node_pool = {
      name       = "nodepool1"
      node_count = 1
      vm_size    = "Standard_B2ps_v2"
    }
    tags = {
      environment = "dev"
    }
  }
}


bastion = {
  bastion1 = {
    name                = "bastiontestA"
    location            = "Japaneast"
    resource_group_name = "ram"
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


network = {
  network1 = {
    name                = "vnetrs"
    location            = "japaneast"
    resource_group_name = "ram"
    address_space       = ["10.0.0.0/16"]
    subnet = {
      sn1 = {
        name = "ram"
        cidr = ["10.0.0.0/24"]
      }
      sn2 = {
        name = "AzureBastionSubnet"
        cidr = ["10.0.1.0/24"]
      }
            sn4 = {
        name = "AzureFirewallSubnet"
        cidr = ["10.0.3.0/24"]
      }
      sn3 = {
        name = "shyam"
        cidr = ["10.0.2.0/24"]
      }
    }
  }
}



PIP = {
  pip1 = {
    name                = "PIP"
    resource_group_name = "ram"
    location            = "japaneast"
    allocation_method   = "Static"

    tags = {
      environment = "Production"
    }
  }
  pip2 = {
    name                = "PIP2"
    resource_group_name = "ram"
    location            = "japaneast"
    allocation_method   = "Static"

    tags = {
      environment = "Production"
    }
  }
  pip3 = {
    name                = "PIP3"
    resource_group_name = "ram"
    location            = "japaneast"
    allocation_method   = "Static"

    tags = {
      environment = "Production"
    }
  }
}
rg = {
  rg1 = {
    name       = "ram"
    location   = "Japaneast"
    managed_by = "ram"
    tags = {
      created_for = "test"
      env         = "dev"

    }

  }
  rg2 = {
    name     = "raghu"
    location = "Japanwest"
    tags = {
      created_for = "test"
      env         = "dev"

    }
  }
  rg3 = {
    name       = "shyam"
    location   = "Centralindia"
    managed_by = "shyam"
  }
}


my_sql = {
  sqldb = {

    name         = "sqldb1"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 2
    sku_name     = "Basic"
    enclave_type = "Default"
  }
}



sql_server = {
  server1 = {
    name                         = "rssqls1"
    resource_group_name          = "ram"
    location                     = "japaneast"
    version                      = "12.0"
    administrator_login          = "sqlrs"
    administrator_login_password = "Factor@666666"
    tags = {
      environment = "dev"
    }

  }
}


stg = {
  stg1 = {
    name                     = "ramstg20902"
    resource_group_name      = "ram"
    location                 = "Japaneast"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      created_by = "ram"
      prod       = "env"
    }
  }
  stg2 = {
    name                     = "ramstg19802"
    resource_group_name      = "ram"
    location                 = "Japaneast"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      created_by = "ram"
    }
  }

}

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

  vm2 = {
    vm_name             = "b-vm"
    location            = "Japaneast"
    resource_group_name = "ram"

    virtual_network_name = "vnetrs"
    subnet_name          = "shyam"
    public_ip_name       = "PIP3"
    nic_name             = "b-nic"

    size     = "Standard_F2"
    keyvault = "prskv12"

  script_name       = "nginx.sh"
    pw_authentication = false

    os_name              = "osdisk2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}


# cdn_profile = {
#   name                = "cdn-profile"
#   location            = "japaneast"
#   resource_group_name = "ram"
#   sku                 = "Standard_Microsoft"
# }

# cdn_endpoint = {
#   name   = "cdn-endpoint"
#   origin = "www.example.com"
#   profile_name = "cdn-profile"
#   resource_group_name = "ram"
#   location            = "japaneast"
# }

# cdn_custom_domain = {
#   name      = "custom-domain"
#   host_name = "example.com"
# }

# ddos = {
#    name                = "protection-plan"
#   location            = "Japaneast"
#   resource_group_name = "ram"
# }


# firewall = {
#     name                = "AZFW"
#     location            = "Japaneast"
#     resource_group_name = "ram"
#     sku_name            = "AZFW_VNet"
#     sku_tier            = "Standard"

#     ip_configuration = {
#       name                 = "ip_configuration"

#     }
#   }


# tm_profile = {
#   profile1 = {
#     resource_group_name    = "ram"
#     traffic_routing_method = "Weighted"

#     monitor_config = {
#       protocol                     = "HTTP"
#       port                         = 80
#       interval_in_seconds          = 30
#       timeout_in_seconds           = 9
#       tolerated_number_of_failures = 3
#     }

#     tags = {
#       environment = "Production"
#     }
#   }
# }
