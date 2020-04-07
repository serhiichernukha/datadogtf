provider "azurerm" {
  version = "~>1.5"

  subscription_id = var.subscription_id
  client_id       = var.terraform_client_id
  client_secret   = var.terraform_client_secret
  tenant_id       = var.tenant_id
}

terraform {
  required_version = "0.12.21"

  backend "azurerm" {
    resource_group_name  = "xxxxxxxxxxxxxx"
    storage_account_name = "xxxxxxxxxxxxxx"
    container_name       = "xxxxxxxxxxxxxx"
    key                  = "xxxxxxxxxxxxxx"
    # Access Key set as an Environment Variable
    # export ARM_ACCESS_KEY=
  }
}

provider "datadog" {
  api_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxx82deb"
  app_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxf80f1"
}
