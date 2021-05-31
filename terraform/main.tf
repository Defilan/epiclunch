terraform {
    required_providers {
      azurerm = {
          source = "hashicorp/azurerm"
          version = "=2.60.0"
      }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "epiclunch-qa" {
    name = "epiclunch-qa"
    location = "West US2"
    tags = {
        environment = "QA"
        application = "epiclunchruns"
    }
}

resource "azurerm_static_site" "epiclunch-qa" {
    name = "epiclunch-qa"
    resource_group_name = azurerm_resource_group.epiclunch-qa.name
    location = "West US2"
}

resource "azurerm_resource_group" "epiclunch-prod" {
    name = "epiclunch-prod"
    location = "West US2"
    tags = {
        environment = "prod"
        application = "epiclunchruns"
    }
}

resource "azurerm_static_site" "epiclunch-prod" {
    name = "epiclunch-prod"
    resource_group_name = azurerm_resource_group.epiclunch-prod.name
    location = "West US2"
}