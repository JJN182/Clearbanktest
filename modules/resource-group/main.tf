resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_resource_group" "rg1" {
  name     = var.name
  location = var.location

  lifecycle {
    prevent_destroy = true
  }
}

