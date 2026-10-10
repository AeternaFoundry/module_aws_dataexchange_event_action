output "dataexchange_event_actions_id" {
  description = "Map of id values across all dataexchange_event_actions, keyed the same as var.dataexchange_event_actions"
  value       = { for k, v in aws_dataexchange_event_action.dataexchange_event_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataexchange_event_actions_action" {
  description = "Map of action values across all dataexchange_event_actions, keyed the same as var.dataexchange_event_actions"
  value       = { for k, v in aws_dataexchange_event_action.dataexchange_event_actions : k => v.action if v.action != null && length(v.action) > 0 }
}
output "dataexchange_event_actions_arn" {
  description = "Map of arn values across all dataexchange_event_actions, keyed the same as var.dataexchange_event_actions"
  value       = { for k, v in aws_dataexchange_event_action.dataexchange_event_actions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "dataexchange_event_actions_created_at" {
  description = "Map of created_at values across all dataexchange_event_actions, keyed the same as var.dataexchange_event_actions"
  value       = { for k, v in aws_dataexchange_event_action.dataexchange_event_actions : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "dataexchange_event_actions_event" {
  description = "Map of event values across all dataexchange_event_actions, keyed the same as var.dataexchange_event_actions"
  value       = { for k, v in aws_dataexchange_event_action.dataexchange_event_actions : k => v.event if v.event != null && length(v.event) > 0 }
}
output "dataexchange_event_actions_region" {
  description = "Map of region values across all dataexchange_event_actions, keyed the same as var.dataexchange_event_actions"
  value       = { for k, v in aws_dataexchange_event_action.dataexchange_event_actions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dataexchange_event_actions_updated_at" {
  description = "Map of updated_at values across all dataexchange_event_actions, keyed the same as var.dataexchange_event_actions"
  value       = { for k, v in aws_dataexchange_event_action.dataexchange_event_actions : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

