output "id" {
  value       = opentelekomcloud_identity_user_v3.user.id
  description = "The ID of the service account"
}

output "name" {
  value       = opentelekomcloud_identity_user_v3.user.name
  description = "The name of the service account"
}

output "access_key" {
  value       = length(opentelekomcloud_identity_credential_v3.ak_sk) > 0 ? opentelekomcloud_identity_credential_v3.ak_sk[0].access : null
  description = "Access Key if ak_sk is enabled for the module"
}

output "secret_key" {
  value       = length(opentelekomcloud_identity_credential_v3.ak_sk) > 0 ? opentelekomcloud_identity_credential_v3.ak_sk[0].secret : null
  sensitive   = true
  description = "Secret Key if ak_sk is enabled for the module"
}

output "password" {
  value       = length(random_password.user_password) > 0 ? random_password.user_password[0].result : null
  sensitive   = true
  description = "Password if password is enabled for the module"
}
