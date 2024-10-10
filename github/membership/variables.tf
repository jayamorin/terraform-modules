variable "username" {
  description = "The user to add to the organization."
  type = string
  nullable = false
}

variable "role" {
  description = <<-EOT
    The role of the user within the organization. admin role represents the owner role
    available via GitHub UI.
    EOT
  type = string
  default = "member"
  validation {
    condition     = contains(["member", "admin"], var.role)
    error_message = "Argument 'role' must one of 'member', or 'admin'."
  }
}

variable "downgrade_on_destroy" {
  description = <<-EOT
    If set to true, when this resource is destroyed, the member will not be removed from
    the organization. Instead, the member's role will be downgraded to 'member'.
    EOT
  type = bool
  default = false
}