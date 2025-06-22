terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "bharurss"
    workspaces {
      name = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "testrg" {
  name = "bdvtrg"
  location = "east us"
}