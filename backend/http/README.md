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

| Name  | Description                   |  Type  |    Default    | Required |
| ----- | ----------------------------- | :----: | :-----------: | :------: |
| token | Github personal access token. | string |               |   yes    |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
