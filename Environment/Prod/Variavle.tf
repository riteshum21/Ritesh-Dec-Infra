variable "rg" {
  type = map(object(
    {
      name       = string
      location   = string
      managed_by = optional(string)
      tags       = optional(map(string))

    }
    )
  )
}

variable "stg" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  }))
}


variable "network" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnet = map(object({
      name = string
      cidr = list(string)
    }))
  }))
}

variable "PIP" {
  type = map(object(
    {
      name                = string
      resource_group_name = string
      location            = string
      allocation_method   = string
      tags                = map(string)

    }
  ))
}

variable "bastion" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string

    }
  ))
}

variable "ACR" {
  type = map(object(
    {
      name                = string
      resource_group_name = string
      location            = string
      sku                 = string
      admin_enabled       = bool

      tags = map(string)
    }
  ))
}

variable "sql_server" {
  type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    tags                         = map(string)

  }))
}

variable "my_sql" {
  type = map(object({

    name         = string
    collation    = string
    license_type = string
    max_size_gb  = number
    sku_name     = string
    enclave_type = string
    tags         = optional(map(string))
  }))

}

variable "vm" {
  type = map(object({
    vm_name             = string
    location            = string
    resource_group_name = string

    virtual_network_name = string
    subnet_name          = string
    public_ip_name       = string
    nic_name             = string

    size                 = string
    keyvault = string
    script_name          = string
    pw_authentication    = bool

    os_name              = string
    caching              = string
    storage_account_type = string

    publisher = string
    offer     = string
    sku       = string
    version   = string
  }))
}
variable "aksrs" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string


    identity = object({
      type = string
    })

    tags = map(string)

    default_node_pool = object({
      name       = string
      node_count = number
      vm_size    = string
  }) }))
}

variable "keyvault" {
  type = map(object({
    name                        = string
    location                    = string
    resource_group_name         = string
    enabled_for_disk_encryption = bool
    soft_delete_retention_days  = number
    purge_protection_enabled    = bool

    sku_name = string


    key_permissions = list(string)

    secret_permissions = list(string)

    storage_permissions = list(string)
  }))
}

variable "KVS" {
  type = map(object({
    username_name  = string
    username_value = string
    password_name  = string
    password_value = string
  }))
}

variable "cdn_profile" {
  type = object({
    name                = string
    location            = string
    resource_group_name = string
    sku                 = string
  })
}

variable "cdn_endpoint" {
  type = object({
    name      = string
    origin    = string
    resource_group_name = string
    profile_name = string
     location            = string
  })
}

variable "cdn_custom_domain" {
  type = object({
    name      = string
    host_name = string
  })
}
variable "ddos" {
  type = object({
  name                = string
  location            = string
  resource_group_name = string
})
}


variable "firewall" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku_name            = string
    sku_tier            = string

    ip_configuration = {
      name                 = string
      subnet_id            = string
      public_ip_address_id = string
    }
  }))
}


variable "subnets" {
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
  }))
}

variable "pips" {
  

  type = map(object(
    {
      name                = string
      resource_group_name = string
      location            = string
      allocation_method   = string
   } ))

}
variable "tm_profile" {
  type = map(object({
    resource_group_name    = string
    traffic_routing_method = string

    monitor_config = object({
      protocol                     = string
      port                         = number
      interval_in_seconds          = number
      timeout_in_seconds           = number
      tolerated_number_of_failures = number
    })

    tags = map(string)
  }))
}


