data "vault_identity_oidc_client_creds" "identity_oidc_client_creds_lookup" {
  for_each = var.identity_oidc_client_creds_lookup

  name      = each.value.name
  namespace = each.value.namespace
}

