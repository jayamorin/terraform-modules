terraform {
  backend "http" {
    address = "${var.address}"
    lock_address = "${var.lock_address}"
    unlock_address = "${var.unlock_address}"
    username = "${var.username}"
    password = "${var.password}"
    lock_method = "${var.lock_method}"
    unlock_method = "${var.unlock_method}"
    retry_wait_min = "${var.retry_wait_min}"
  }
}
