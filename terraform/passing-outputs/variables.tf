########  Global ########
variable "location" {
    type = string
    description = "Azure location of resource group"
    default = "West Europe"
}

####### Resource Group Variables #######
variable "rgname" {
    type = string
    description = "Name of resource group"
    default = "demo"
}

############ Storage Account Variables #######

variable "saname" {
    type = string
    description = "Name of storage account"
    default = "sademo"
}