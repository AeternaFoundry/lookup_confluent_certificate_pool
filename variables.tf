variable "certificate_pool_lookup" {
  description = <<EOT
Map of certificate_pool_lookup, attributes below
Required:
    - certificate_authority (block):
        - id (required)
Optional:
    - display_name
EOT

  type = map(object({
    display_name = optional(string)
    certificate_authority = object({
      id = string
    })
  }))
}

