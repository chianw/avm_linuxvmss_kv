provider "azurerm" {
  features {}
  subscription_id = "a66aa8a7-28a9-457b-b879-1cfff0201ed3"
}

terraform {
  required_version = "~> 1.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 3.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }

  backend "azurerm" {
    resource_group_name  = "singteltfstate"
    storage_account_name = "sttfstate781"
    container_name       = "tfstate"
    key                  = "linuxvmsskv.tfstate"
    subscription_id      = "a66aa8a7-28a9-457b-b879-1cfff0201ed3"
  }
}