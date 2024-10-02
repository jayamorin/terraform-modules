variable "address" {
  description = "The address of the REST endpoint."
  type        = string
  nullable    = false
}

variable "update_method" {
  description = "HTTP method to use when updating state."
  type        = string
  default     = "POST"
  validation {
    condition     = contains(["GET", "POST", "PUT", "DELETE"], var.update_method)
    error_message = "Argument 'update_method' must one of 'GET', 'POST', 'PUT', or 'DELETE'."
  }
}

variable "lock_address" {
  description = "The address of the lock REST endpoint."
  type        = string
  default     = "disabled"
}

variable "lock_method" {
  description = "The HTTP method to use when locking."
  type        = string
  default     = "LOCK"
  validation {
    condition     = contains(["LOCK", " UNLOCK"], var.lock_method)
    error_message = "Argument 'lock_method' must one of 'LOCK', or 'UNLOCK'."
  }
}

variable "unlock_address" {
  description = "The address of the unlock REST endpoint."
  type        = string
  default     = "disabled"
}

variable "unlock_method" {
  description = "The HTTP method to use when unlocking."
  type        = string
  default     = "UNLOCK"
  validation {
    condition     = contains(["LOCK", "UNLOCK"], var.unlock_method)
    error_message = "Argument 'unlock_method' must one of 'LOCK', or 'UNLOCK'."
  }
}

variable "username" {
  description = "The username for HTTP basic authentication."
  type        = string
  default     = ""
}

variable "password" {
  description = "The password for HTTP basic authentication."
  type        = string
  default     = ""
}

variable "skip_cert_verification" {
  description = "Whether to skip TLS verification."
  type        = bool
  default     = false
}

variable "retry_max" {
  description = "The number of HTTP request retries."
  type        = number
  default     = 2
}

variable "retry_wait_min" {
  description = "The minimum time in seconds to wait between HTTP request attempts."
  type        = number
  default     = 1
}

variable "retry_wait_max" {
  description = "The maximum time in seconds to wait between HTTP request attempts."
  type        = number
  default     = 30
}