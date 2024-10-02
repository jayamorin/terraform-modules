# Terraform backend

## Terraform versions

Only Terraform 1.9.6 is supported.

## Usage

```hcl
terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                   | Description                                                        | Type   | Default  | Required | Choices                   |
| ---------------------- | ------------------------------------------------------------------ | :----: | :------: | :------: | :-----------------------: |
| address                | The address of the REST endpoint.                                  | string |          | yes      |                           |
| update_method          | HTTP method to use when updating state.                            | string | POST     | yes      | GET, POST, PUT, or DELETE |
| lock_address           | The address of the lock REST endpoint.                             | string | disabled | yes      | enabled, or disabled      |
| lock_method            | The HTTP method to use when locking.                               | string | LOCK     | yes      | LOCK or UNLOCK            |
| unlock_address         | The address of the unlock REST endpoint.                           | string | disabled | yes      | enabled, disabled         |
| unlock_method          | The HTTP method to use when unlocking.                             | string | UNLOCK   | yes      | LOCK, UNLOCK              |
| username               | The username for HTTP basic authentication.                        | string |          |          |                           |
| password               | The password for HTTP basic authentication.                        | string |          |          |                           |
| skip_cert_verification | Whether to skip TLS verification.                                  | bool   | false    |          |                           |
| retry_max              | The number of HTTP request retries.                                | number | 2        |          |                           |
| retry_wait_min         | The minimum time in seconds to wait between HTTP request attempts. | number | 1        |          |                           |
| retry_wait_max         | The maximum time in seconds to wait between HTTP request attempts. | number | 30       |          |                           |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
