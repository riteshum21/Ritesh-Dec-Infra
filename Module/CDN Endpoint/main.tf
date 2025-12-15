

resource "azurerm_cdn_profile" "cdn_p" {
  name                = var.cdn_profile.name
  location            = var.cdn_profile.location
  resource_group_name = var.cdn_profile.resource_group_name
  sku                 = var.cdn_profile.sku
}

resource "azurerm_cdn_endpoint" "cdn_ep" {
    depends_on = [ azurerm_cdn_profile.cdn_p ]
  name                = var.cdn_endpoint.name
  profile_name        = var.cdn_endpoint.profile_name # change to data block
  resource_group_name = var.cdn_endpoint.resource_group_name
  location            = var.cdn_endpoint.location

  origin {
    name      = "origin-1"
    host_name = var.cdn_endpoint.origin
  }
}


resource "azurerm_cdn_endpoint_custom_domain" "cdn_cd" {
  depends_on = [ azurerm_cdn_endpoint.cdn_ep ]
  name            = var.cdn_custom_domain.name
  cdn_endpoint_id = azurerm_cdn_endpoint.cdn_ep.id # change to data block
  host_name       = var.cdn_custom_domain.host_name

  cdn_managed_https {
    certificate_type = "Dedicated"
    protocol_type    = "ServerNameIndication"
    tls_version      = "TLS12"
  }
}
