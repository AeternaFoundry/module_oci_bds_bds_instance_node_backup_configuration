variable "bds_bds_instance_node_backup_configurations" {
  description = <<EOT
Map of bds_bds_instance_node_backup_configurations, attributes below
Required:
    - bds_instance_id
    - schedule
    - level_type_details (block):
        - level_type (required)
        - node_host_name (optional)
        - node_type (optional)
Optional:
    - backup_type
    - display_name
    - number_of_backups_to_retain
    - timezone
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    bds_instance_id             = string
    schedule                    = string
    backup_type                 = optional(string)
    display_name                = optional(string)
    number_of_backups_to_retain = optional(number)
    timezone                    = optional(string)
    level_type_details = object({
      level_type     = string
      node_host_name = optional(string)
      node_type      = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instance_node_backup_configurations : (
        contains([for v in ["NODE_LEVEL", "NODE_TYPE_LEVEL"] : lower(v)], lower(v.level_type_details.level_type))
      )
    ])
    error_message = "must be one of: \"NODE_LEVEL\", \"NODE_TYPE_LEVEL\""
  }
}

