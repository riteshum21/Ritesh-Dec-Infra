
# resource "azurerm_mssql_server" "mysql_database"  {
#   for_each = var.mysql_database
#   name                = each.value.name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location
#   server_name         = each.value.server_name
#  }
 

#   extended_auditing_policy {
#   storage_endpoint                        = data.azurerm_storage_account.stg2.primary_blob_endpoint
#   storage_account_access_key              = data.azurerm_storage_account.stg2.primary_access_key
#   storage_account_access_key_is_secondary = true
#   retention_in_days                       = 6
#   }

#    tags = each.value.tags


   resource "azurerm_mssql_database" "my_sql" {
    for_each = var.my_sql
  name         = each.value.name
  
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
  enclave_type = each.value.enclave_type 
  tags = each.value.tags


server_id    = data.azurerm_mssql_server.sqls1.id


}
 
