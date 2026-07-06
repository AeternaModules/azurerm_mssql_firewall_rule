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
  # --- Unconfirmed validation candidates, derived from azurerm_mssql_firewall_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: server_id
  #   source:    [from validate.ServerID] !ok
  # path: server_id
  #   source:    [from validate.ServerID] err != nil
  # path: start_ip_address
  #   source:    validation.All(...) - no translation rule yet, add one
  # path: end_ip_address
  #   source:    validation.All(...) - no translation rule yet, add one
}

