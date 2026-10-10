variable "dataexchange_event_actions" {
  description = <<EOT
Map of dataexchange_event_actions, attributes below
Optional:
    - region
    - action (block):
        - export_revision_to_s3 (optional, block):
            - encryption (optional, block):
                - kms_key_arn (optional)
                - type (optional)
            - revision_destination (optional, block):
                - bucket (required)
                - key_pattern (optional)
    - event (block):
        - revision_published (optional, block):
            - data_set_id (required)
EOT

  type = map(object({
    region = optional(string)
    action = optional(list(object({
      export_revision_to_s3 = optional(list(object({
        encryption = optional(list(object({
          kms_key_arn = optional(string)
          type        = optional(string)
        })))
        revision_destination = optional(list(object({
          bucket      = string
          key_pattern = optional(string)
        })))
      })))
    })))
    event = optional(list(object({
      revision_published = optional(list(object({
        data_set_id = string
      })))
    })))
  }))
}

