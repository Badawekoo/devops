output "rgname" {
    description = "The primary access key for the storage account"
    value = azurerm_resource_group.rg.name
}