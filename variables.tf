variable "pipeline_triggers" {
  description = <<EOT
Map of pipeline_triggers, attributes below
Required:
    - description
    - project
EOT

  type = map(object({
    description = string
    project     = string
  }))
}

