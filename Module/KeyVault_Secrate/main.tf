
resource "azurerm_key_vault_secret" "username" {
  for_each = var.KVS
  name         = each.value.username_name
  value        = each.value.username_value
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
resource "azurerm_key_vault_secret" "password" {
  for_each = var.KVS
  name         = each.value.password_name
  value        = each.value.password_value
  key_vault_id = data.azurerm_key_vault.keyvault.id
}


data "azurerm_key_vault" "keyvault" {

  name                = "prskv12"
  resource_group_name = "ram"
}






