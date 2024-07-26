resource "opentelekomcloud_identity_role_assignment_v3" "rules" {
  for_each = toset(var.role_ids)

  group_id = opentelekomcloud_identity_group_v3.group.id
  role_id  = each.key

  domain_id    = var.domain_id
  all_projects = true
}
