output "subscription_name" {
  description = "The display name of this subscription"
  value       = data.azurerm_subscription.this.display_name
}

output "subscription_id" {
  description = "The id of this subscription"
  value       = var.subscription_id
}

output "tenant_id" {
  description = "The tenant id of this subscription"
  value       = data.azurerm_subscription.this.tenant_id
}

output "location" {
  description = "The location name"
  value       = local.location
}

output "location_abbreviation" {
  description = "The location abbreviation"
  value       = local.location_abbreviation
}

output "environment" {
  description = "The environment name"
  value       = local.environment
}

output "resource_abbreviations" {
  description = "Resource abbreviations"
  value       = local.resource_abbreviations
}

output "resource_basenames" {
  description = "Base names for all resources"
  value       = local.resource_basenames
}

