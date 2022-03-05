# Terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }
}

#Azure provider
provider "azurerm" {
  features {}
}

#Create Resource Group
module "resource_group" {
  source    = "./modules/resource_group"

  rgname    = var.rgname
  location  = var.location
}

#Create Storage Account
module "storage_account" {
  source    = "./modules/storage_account"

  resource_group_name = module.resource_group.rgname
  saname    = var.saname
  location  = var.location
}