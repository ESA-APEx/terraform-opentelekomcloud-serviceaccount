resource "opentelekomcloud_identity_group_v3" "group" {
  name        = var.name
  description = "Group for ${var.name}"
}

resource "opentelekomcloud_identity_group_membership_v3" "group_membership" {
  group = opentelekomcloud_identity_group_v3.group.id
  users = [opentelekomcloud_identity_user_v3.user.id]
}
