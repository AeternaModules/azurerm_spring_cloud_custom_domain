variable "spring_cloud_custom_domains" {
  description = <<EOT
Map of spring_cloud_custom_domains, attributes below
Required:
    - name
    - spring_cloud_app_id
Optional:
    - certificate_name
    - thumbprint
EOT

  type = map(object({
    name                = string
    spring_cloud_app_id = string
    certificate_name    = optional(string)
    thumbprint          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_custom_domains : (
        v.certificate_name == null || (length(v.certificate_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_custom_domains : (
        v.thumbprint == null || (length(v.thumbprint) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

