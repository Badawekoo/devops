####### Resource Group Variables #######
variable "rgname" {
    type = string
    description = "Name of resource group"
    default = "demo"
}

variable "rglocation" {
    type = string
    description = "Azure location of resource group"
    default = "West Europe"
}

############ Storage Account Variables #######

variable "saname" {
    type = string
    description = "Name of storage account"
    default = "sademo"
}

variable "salocation" {
    type = string
    description = "Azure location of storage account environment"
    default = "West Europe"
}