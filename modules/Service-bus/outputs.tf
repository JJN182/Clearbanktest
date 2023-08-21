output "service_bus_ids" {
  description = "The IDs of the Service Bus namespaces created"
  value       = [for sb in azurerm_servicebus_namespace.asbn : sb.id]
}
