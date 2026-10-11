variable "tags_tag_key_iam_members" {
  description = <<EOT
Map of tags_tag_key_iam_members, attributes below
Required:
    - member
    - role
    - tag_key
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member  = string
    role    = string
    tag_key = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

