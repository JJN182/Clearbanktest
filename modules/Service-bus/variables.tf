variable "name" {
  description = "Name for the Azure Service Bus Namespace"
  type        = string
}

variable "location" {
  description = "The Azure location for the Service Bus Namespace"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which the Service Bus Namespace should be created"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the Service Bus Namespace"
  type        = map(string)
  default     = {}
}

variable "queue_names" {
  description = "List of queue names for the service bus"
  type        = list(string)
}
