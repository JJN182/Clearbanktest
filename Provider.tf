terraform {
  required_version = ">= 1.0" # You can adjust this as per your needs.

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0" # This will require at least version 2.0. Adjust to whatever.
  }
}

provider "azurerm" {
  features {}
}
}