output "mssql_firewall_rules_id" {
  description = "Map of id values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = { for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : k => v.id }
}
output "mssql_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = { for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : k => v.end_ip_address }
}
output "mssql_firewall_rules_name" {
  description = "Map of name values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = { for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : k => v.name }
}
output "mssql_firewall_rules_server_id" {
  description = "Map of server_id values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = { for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : k => v.server_id }
}
output "mssql_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all mssql_firewall_rules, keyed the same as var.mssql_firewall_rules"
  value       = { for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : k => v.start_ip_address }
}

