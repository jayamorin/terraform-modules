variable "team_id" {
  description = "The GitHub team id or the GitHub team slug."
  type        = string
  nullable    = false
  default     = "test"
}

variable "username" {
  description = "The user to add to the team."
  type        = string
  nullable    = false
  default     = "test"
}

variable "role" {
  description = "The role of the user within the team. Must be one of member or maintainer. Defaults to member."
  type = string
  default = "member"
  validation {
    condition     = contains(["member", "maintainer"], var.role)
    error_message = "Argument 'role' must one of 'member', or 'maintainer'."
  }
}