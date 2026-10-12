output "identity_oidc_client_creds_lookup_id" {
  description = "Map of id values across all identity_oidc_client_creds_lookup, keyed the same as var.identity_oidc_client_creds_lookup except keys with no id are omitted"
  value       = { for k, v in data.vault_identity_oidc_client_creds.identity_oidc_client_creds_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_oidc_client_creds_lookup_client_id" {
  description = "Map of client_id values across all identity_oidc_client_creds_lookup, keyed the same as var.identity_oidc_client_creds_lookup except keys with no client_id are omitted"
  value       = { for k, v in data.vault_identity_oidc_client_creds.identity_oidc_client_creds_lookup : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "identity_oidc_client_creds_lookup_client_secret" {
  description = "Map of client_secret values across all identity_oidc_client_creds_lookup, keyed the same as var.identity_oidc_client_creds_lookup except keys with no client_secret are omitted"
  value       = { for k, v in data.vault_identity_oidc_client_creds.identity_oidc_client_creds_lookup : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "identity_oidc_client_creds_lookup_name" {
  description = "Map of name values across all identity_oidc_client_creds_lookup, keyed the same as var.identity_oidc_client_creds_lookup except keys with no name are omitted"
  value       = { for k, v in data.vault_identity_oidc_client_creds.identity_oidc_client_creds_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_oidc_client_creds_lookup_namespace" {
  description = "Map of namespace values across all identity_oidc_client_creds_lookup, keyed the same as var.identity_oidc_client_creds_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.vault_identity_oidc_client_creds.identity_oidc_client_creds_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

