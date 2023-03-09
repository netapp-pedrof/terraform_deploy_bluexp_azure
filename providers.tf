terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
    netapp-cloudmanager = {
      source  = "NetApp/netapp-cloudmanager"
      version = ">=23.1.1"
    }
  }
}
# Configure the Microsoft Azure Provider -> https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
provider "azurerm" {
  features {}
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
  subscription_id = var.azure_subscription_id
}

# Configure Netapp Cloud Manager Provider -> https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs
provider "netapp-cloudmanager" {
  refresh_token = var.netapp_refresh_token
}

