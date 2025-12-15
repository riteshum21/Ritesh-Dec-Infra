data "azurerm_subnet" "subnet" {
  

  name                 = var.subnet
  virtual_network_name = var.network1
  resource_group_name  = var.rg1

}


data "azurerm_public_ip" "pip1" {
  name                = var.pip1
  resource_group_name = var.rg1
}

variable "subnet" {
  default = "AzureBastionSubnet"
  
}

variable "network1" {
  default = "vnetrs"
  
}

variable "rg1" {
  default = "ram"
}
variable "pip1" {
  default = "PIP"
  
}