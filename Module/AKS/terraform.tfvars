
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

