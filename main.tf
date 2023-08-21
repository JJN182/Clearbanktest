locals {
  environment_names = [for env in var.environments : format("%s-%s", var.base_name, env)]
}

module "resource_group" {
  source = "./modules/resource-group"
  count  = length(local.environment_names)
  name   = local.environment_names[count.index]
  location = var.location
}

module "service_bus" {
  source              = "./modules/service-bus"
  count               = length(local.environment_names)
  name                = format("%s-asbn-%d", local.environment_names[count.index], count.index + 1)
  location            = var.location
  resource_group_name = module.resource_group[count.index].name
  tags = {
    environment  = var.environments[count.index]
    cost_centre  = "CC001"
    product_name = "WebsiteData"
  }
  queue_names = ["queue1", "queue2"]
}
