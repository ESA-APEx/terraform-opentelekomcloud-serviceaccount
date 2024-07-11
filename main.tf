resource "opentelekomcloud_identity_role_assignment_v3" "rules" {
  for_each = toset(var.role_ids)

  group_id = opentelekomcloud_identity_group_v3.group.id
  role_id  = each.key

  project_id = var.project_id
}