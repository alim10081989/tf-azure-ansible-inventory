terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
   local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "demo-tfstate-rg"
    storage_account_name = "tfstate4k835"
    container_name       = "tfstate-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
