output "bds_bds_instance_node_backup_configurations_id" {
  description = "Map of id values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no id are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_instance_node_backup_configurations_backup_type" {
  description = "Map of backup_type values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no backup_type are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.backup_type if v.backup_type != null && length(v.backup_type) > 0 }
}
output "bds_bds_instance_node_backup_configurations_bds_instance_id" {
  description = "Map of bds_instance_id values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no bds_instance_id are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.bds_instance_id if v.bds_instance_id != null && length(v.bds_instance_id) > 0 }
}
output "bds_bds_instance_node_backup_configurations_display_name" {
  description = "Map of display_name values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no display_name are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "bds_bds_instance_node_backup_configurations_level_type_details" {
  description = "Map of level_type_details values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no level_type_details are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => one(v.level_type_details) if v.level_type_details != null && length(v.level_type_details) > 0 }
}
output "bds_bds_instance_node_backup_configurations_number_of_backups_to_retain" {
  description = "Map of number_of_backups_to_retain values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no number_of_backups_to_retain are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.number_of_backups_to_retain if v.number_of_backups_to_retain != null }
}
output "bds_bds_instance_node_backup_configurations_schedule" {
  description = "Map of schedule values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no schedule are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "bds_bds_instance_node_backup_configurations_state" {
  description = "Map of state values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no state are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "bds_bds_instance_node_backup_configurations_time_created" {
  description = "Map of time_created values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no time_created are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "bds_bds_instance_node_backup_configurations_time_updated" {
  description = "Map of time_updated values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no time_updated are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "bds_bds_instance_node_backup_configurations_timezone" {
  description = "Map of timezone values across all bds_bds_instance_node_backup_configurations, keyed the same as var.bds_bds_instance_node_backup_configurations except keys with no timezone are omitted"
  value       = { for k, v in oci_bds_bds_instance_node_backup_configuration.bds_bds_instance_node_backup_configurations : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}

