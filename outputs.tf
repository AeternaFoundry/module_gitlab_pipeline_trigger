output "pipeline_triggers_id" {
  description = "Map of id values across all pipeline_triggers, keyed the same as var.pipeline_triggers except keys with no id are omitted"
  value       = { for k, v in gitlab_pipeline_trigger.pipeline_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pipeline_triggers_description" {
  description = "Map of description values across all pipeline_triggers, keyed the same as var.pipeline_triggers except keys with no description are omitted"
  value       = { for k, v in gitlab_pipeline_trigger.pipeline_triggers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "pipeline_triggers_pipeline_trigger_id" {
  description = "Map of pipeline_trigger_id values across all pipeline_triggers, keyed the same as var.pipeline_triggers except keys with no pipeline_trigger_id are omitted"
  value       = { for k, v in gitlab_pipeline_trigger.pipeline_triggers : k => v.pipeline_trigger_id if v.pipeline_trigger_id != null }
}
output "pipeline_triggers_project" {
  description = "Map of project values across all pipeline_triggers, keyed the same as var.pipeline_triggers except keys with no project are omitted"
  value       = { for k, v in gitlab_pipeline_trigger.pipeline_triggers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "pipeline_triggers_token" {
  description = "Map of token values across all pipeline_triggers, keyed the same as var.pipeline_triggers except keys with no token are omitted"
  value       = { for k, v in gitlab_pipeline_trigger.pipeline_triggers : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

