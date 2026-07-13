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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_custom_domain's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SpringCloudCustomDomainName] !ok
  # path: name
  #   source:    [from validate.SpringCloudCustomDomainName] !regexp.MustCompile(`^([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,}$`).MatchString(v)
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] !ok
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] err != nil
  # path: certificate_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: thumbprint
  #   condition: length(value) > 0
  #   message:   must not be empty
}

