

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