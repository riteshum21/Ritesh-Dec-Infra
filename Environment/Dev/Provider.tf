terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Ritesh-Dec"
    storage_account_name = "riteshstg"
    container_name       = "riteshcnt"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "86c2c7ab-0841-425a-9004-95c83c2075de"
}
