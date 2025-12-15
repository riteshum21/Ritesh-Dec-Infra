variable "KVS" {
  type = map(object({
    username_name  = string
    username_value = string
    password_name  = string
    password_value = string
  }))
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

    secret_permissions =list(string)

    storage_permissions = list(string)
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

