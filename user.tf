resource "random_password" "user_password" {
  count = var.password ? 1 : 0

  length = 16
}

resource "opentelekomcloud_identity_user_v3" "user" {
  name = var.name

  access_type = "programmatic"
  password    = var.password ? random_password.user_password[0].result : null
  pwd_reset   = var.password ? false : true
}
