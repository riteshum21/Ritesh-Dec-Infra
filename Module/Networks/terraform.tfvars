
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
