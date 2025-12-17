
stg = {
  stg1 = {
    name                     = "ramstg2090"
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
    name                     = "ramstg1980"
    resource_group_name      = "ram"
    location                 = "Japaneast"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      created_by = "ram"
    }
  }

}
