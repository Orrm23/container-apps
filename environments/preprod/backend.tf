terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "pipeline"
    storage_account_name = "pipelinestorage11"
    container_name = "containerpipeline"
    key = "terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}
}