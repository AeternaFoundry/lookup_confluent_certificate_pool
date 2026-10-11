output "certificate_pool_lookup_id" {
  description = "Map of id values across all certificate_pool_lookup, keyed the same as var.certificate_pool_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_certificate_pool.certificate_pool_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "certificate_pool_lookup_certificate_authority" {
  description = "Map of certificate_authority values across all certificate_pool_lookup, keyed the same as var.certificate_pool_lookup except keys with no certificate_authority are omitted"
  value       = { for k, v in data.confluent_certificate_pool.certificate_pool_lookup : k => one(v.certificate_authority) if v.certificate_authority != null && length(v.certificate_authority) > 0 }
}
output "certificate_pool_lookup_description" {
  description = "Map of description values across all certificate_pool_lookup, keyed the same as var.certificate_pool_lookup except keys with no description are omitted"
  value       = { for k, v in data.confluent_certificate_pool.certificate_pool_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "certificate_pool_lookup_display_name" {
  description = "Map of display_name values across all certificate_pool_lookup, keyed the same as var.certificate_pool_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.confluent_certificate_pool.certificate_pool_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "certificate_pool_lookup_external_identifier" {
  description = "Map of external_identifier values across all certificate_pool_lookup, keyed the same as var.certificate_pool_lookup except keys with no external_identifier are omitted"
  value       = { for k, v in data.confluent_certificate_pool.certificate_pool_lookup : k => v.external_identifier if v.external_identifier != null && length(v.external_identifier) > 0 }
}
output "certificate_pool_lookup_filter" {
  description = "Map of filter values across all certificate_pool_lookup, keyed the same as var.certificate_pool_lookup except keys with no filter are omitted"
  value       = { for k, v in data.confluent_certificate_pool.certificate_pool_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

