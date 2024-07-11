# This is recommended only for Tofu access, using ak/sk pair for any other
# api access is almost insanity. Poorly documented, where roads took
# me to https://github.com/Drloveya/huawei_api_sdk/blob/master/signature/signer.py
# Fortunately they have a kubeconfig resource in provider implemented, so we can
# hopefully just use that for cluster access.
resource "opentelekomcloud_identity_credential_v3" "ak_sk" {
  count = var.ak_sk ? 1 : 0

  user_id     = opentelekomcloud_identity_user_v3.user.id
  description = "Credentials for ${var.name}"
}
