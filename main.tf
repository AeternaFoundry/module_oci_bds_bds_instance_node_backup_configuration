resource "oci_bds_bds_instance_node_backup_configuration" "bds_bds_instance_node_backup_configurations" {
  for_each = var.bds_bds_instance_node_backup_configurations

  bds_instance_id             = each.value.bds_instance_id
  schedule                    = each.value.schedule
  backup_type                 = each.value.backup_type
  display_name                = each.value.display_name
  number_of_backups_to_retain = each.value.number_of_backups_to_retain
  timezone                    = each.value.timezone

  level_type_details {
    level_type     = each.value.level_type_details.level_type
    node_host_name = each.value.level_type_details.node_host_name
    node_type      = each.value.level_type_details.node_type
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

