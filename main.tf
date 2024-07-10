provider "azurerm" {
    features {
      
    }

    //creating first resource
    resource "azurerm_resource_group" "resource_group" {
        name = "rg-terraform-demo"
        location = "eastus"
    }

    resource "azurerm_storage_account" "storage_account" {
        name = "stterraformdemo"
        resource_group_name = azurerm_resource_group.resource_group.name
        location = azurerm_resource_group.resource_group.location
        account_tier = "Standard"
        account_replication_type = "LRS"
    }

}