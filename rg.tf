terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.55.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "${ARM_SUBSCRIPTION_ID}"
  client_id = "${ARM_CLIENT_ID}"
  client_secret = "${ARM_CLIENT_SECRET}"
  tenant_id = "${ARM_TENANT_ID}"
}

resource "azurerm_resource_group" "day2-rg" {
    name = "jk-rg101"
    location = "North Europe"
}
