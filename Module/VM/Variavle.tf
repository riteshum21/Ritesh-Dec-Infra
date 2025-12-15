variable "nicrs" {
  type = map(object({
      name                = string
  location            = string
  resource_group_name = string
  
  ip_configuration = object(
    {
    name = string
     subnet_name = string
     pip_name = string
})
  
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

variable "vms" {
  type = map(object({
     name                = string
  resource_group_name = string
  location            = string
  size                = string
  admin_username      = string
admin_password = string
disable_password_authentication  = bool
network_interface_ids = list(string)
   os_disk = object({
      name                 = string
      caching              = string
      storage_account_type = string
    })
 source_image_reference = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
}
 )}))
}

