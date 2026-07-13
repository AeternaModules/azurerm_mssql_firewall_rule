variable "mssql_firewall_rules" {
  description = <<EOT
Map of mssql_firewall_rules, attributes below
Required:
    - end_ip_address
    - name
    - server_id
    - start_ip_address
EOT

  type = map(object({
    end_ip_address   = string
    name             = string
    server_id        = string
    start_ip_address = string
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

