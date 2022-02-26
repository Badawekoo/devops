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

module "resource_group" {
  source    = "./modules/resource_group"

  rgname    = var.rgname
  rglocation  = var.rglocation
}

#Create Storage Account
module "storage_account" {
  source    = "./modules/storage-account"
  resource_group_name = module.resource_group.rgname
  saname    = var.saname
  salocation  = var.salocation
}

#Create Storage Account
# module "storage_account2" {
#   source    = "./modules/storage-account"

#   saname    = "sacal1297202"
#   rgname    = "cal-1297-20"
#   location  = "westus"
# }