variable "name" {
  description = "The name of the team."
  type        = string
  nullable    = false
}

variable "description" {
  description = "A description of the team."
  type        = string
}

variable "privacy" {
  description = "The level of privacy for the team."
  type        = string
  default     = "secret"
    validation {
    condition     = contains(["secret", "closed"], var.privacy)
    error_message = "Argument 'privacy' must one of 'secret', or 'closed'."
  }
}

variable "create_default_maintainer" {
  description = <<-EOT
    Adds a default maintainer to the team. Defaults to false and adds the creating user
    to the team when true.
    EOT
  type        = bool
  default     = false
}