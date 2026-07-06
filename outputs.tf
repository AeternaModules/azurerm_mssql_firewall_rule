output "mssql_firewall_rules" {
  description = "All mssql_firewall_rule resources"
  value       = azurerm_mssql_firewall_rule.mssql_firewall_rules
}
output "mssql_firewall_rules_end_ip_address" {
  description = "List of end_ip_address values across all mssql_firewall_rules"
  value       = [for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : v.end_ip_address]
}
output "mssql_firewall_rules_name" {
  description = "List of name values across all mssql_firewall_rules"
  value       = [for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : v.name]
}
output "mssql_firewall_rules_server_id" {
  description = "List of server_id values across all mssql_firewall_rules"
  value       = [for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : v.server_id]
}
output "mssql_firewall_rules_start_ip_address" {
  description = "List of start_ip_address values across all mssql_firewall_rules"
  value       = [for k, v in azurerm_mssql_firewall_rule.mssql_firewall_rules : v.start_ip_address]
}

