resource "azurerm_servicebus_namespace" "asbn" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  tags                = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_servicebus_queue" "queue" {
  count               = length(var.queue_names)
  name                = var.queue_names[count.index]
  resource_group_name = var.resource_group_name
  namespace_name      = azurerm_servicebus_namespace.asbn.name

  lifecycle {
    prevent_destroy = true
  }
}
