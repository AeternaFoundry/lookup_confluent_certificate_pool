data "confluent_certificate_pool" "certificate_pool_lookup" {
  for_each = var.certificate_pool_lookup

  display_name = each.value.display_name

  certificate_authority {
    id = each.value.certificate_authority.id
  }
}

