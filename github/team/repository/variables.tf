variable "team_id" {
  description = "The GitHub team id or the GitHub team slug
  type        = string
  nullable    = false
}

variable "repository" {
  description = "The repository to add to the team."
  type        = string
  nullable    = false
}

variable "permission" {
  description = "The permissions of team members regarding the repository."
  type = string
  default = "pull"
  validation {
    condition     = contains(["pull", "triage", "push", "maintain", "admin"], var.permission)
    error_message = "Argument 'permission' must one of 'pull', 'triage', 'push', 'maintain', or 'admin'."
  }
}