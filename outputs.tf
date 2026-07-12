output "spring_cloud_custom_domains_certificate_name" {
  description = "Map of certificate_name values across all spring_cloud_custom_domains, keyed the same as var.spring_cloud_custom_domains"
  value       = { for k, v in azurerm_spring_cloud_custom_domain.spring_cloud_custom_domains : k => v.certificate_name }
}
output "spring_cloud_custom_domains_name" {
  description = "Map of name values across all spring_cloud_custom_domains, keyed the same as var.spring_cloud_custom_domains"
  value       = { for k, v in azurerm_spring_cloud_custom_domain.spring_cloud_custom_domains : k => v.name }
}
output "spring_cloud_custom_domains_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_custom_domains, keyed the same as var.spring_cloud_custom_domains"
  value       = { for k, v in azurerm_spring_cloud_custom_domain.spring_cloud_custom_domains : k => v.spring_cloud_app_id }
}
output "spring_cloud_custom_domains_thumbprint" {
  description = "Map of thumbprint values across all spring_cloud_custom_domains, keyed the same as var.spring_cloud_custom_domains"
  value       = { for k, v in azurerm_spring_cloud_custom_domain.spring_cloud_custom_domains : k => v.thumbprint }
}

