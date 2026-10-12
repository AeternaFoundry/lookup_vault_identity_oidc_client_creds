variable "identity_oidc_client_creds_lookup" {
  description = <<EOT
Map of identity_oidc_client_creds_lookup, attributes below
Required:
    - name
Optional:
    - namespace
EOT

  type = map(object({
    name      = string
    namespace = optional(string)
  }))
}

