resource "google_tags_tag_key_iam_member" "tags_tag_key_iam_members" {
  for_each = var.tags_tag_key_iam_members

  member  = each.value.member
  role    = each.value.role
  tag_key = each.value.tag_key

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

