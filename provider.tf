#Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  client_id       = "da4d48b3-4e20-4f3f-97ad-cdaaba1934c3"
  client_secret   = "AVF8Q~AvFbKipwHUnvnNRUwxF1mekDgmCnT__aIU"
  tenant_id       = "ad0ef7e8-ae1f-436e-8684-99df5c7bb78d"
  subscription_id = "b569ce26-18b4-4d35-b024-ea6337fbc8b9"
}

terraform {
  backend "azurerm" {
    access_key           = "a2aTB2W5rJ8Mzb2DZ5lvPYq34E19hxxEfcXjXGQsPW8bbF9T8rXPio5RHgGOVZbILf6Ku2ET6nWi+AStZzxPiA=="  # Can also be set via `ARM_ACCESS_KEY` environment variable.
    storage_account_name = "terra009"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                                 # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
