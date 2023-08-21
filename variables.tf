variable "environments" {
  description = "List of environments for which resources will be created"
  type        = list(string)
  default     = ["test", "staging", "production"]
}

variable "base_name" {
  description = "Base name to use for all resources"
  type        = string
  default     = "indie-it"
}

variable "location" {
  description = "The Azure location for resources"
  type        = string
  default     = "UK South"
}

variable "cost_centre" {
  description = "Cost centre for the resources"
  type        = string
  default     = "CC001"
}

variable "product_name" {
  description = "Product name for the resources"
  type        = string
  default     = "WebsiteData"
}

variable "queue_names" {
  description = "List of queue names for the service bus"
  type        = list(string)
  default     = ["queue1", "queue2"]
}
