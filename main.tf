resource "gitlab_pipeline_trigger" "pipeline_triggers" {
  for_each = var.pipeline_triggers

  description = each.value.description
  project     = each.value.project
}

