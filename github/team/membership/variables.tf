variable "team_id" {
  description = "The GitHub team id or the GitHub team slug."
  type        = string
  nullable    = false
}

variable "username" {
  description = "The user to add to the team."
  type        = string
  nullable    = false
}

variable "role" {
  description = "The role of the user within the team."
  type = string
  default = "member"
  validation {
    condition     = contains(["member", "maintainer"], var.role)
    error_message = "Argument 'role' must one of 'member', or 'maintainer'."
  }
}