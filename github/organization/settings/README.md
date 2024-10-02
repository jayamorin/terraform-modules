# Terraform backend

## Terraform versions

Only Terraform 1.9.6 is supported.

## Usage

```hcl
  module "organization" {
    source = "git::hhttps://github.com/jayamorin/terraform-modules.git//github/organization/settings?ref=main"
    billing_email = "test@example.com"
    company = "Test Company"
    blog = "https://example.com"
    email = "test@example.com"
    twitter_username = "Test"
    location = "Test Location"
    name = "Test Name"
    description = "Test Description"
    has_organization_projects = true
    has_repository_projects = true
    default_repository_permission = "read"
    members_can_create_repositories = true
    members_can_create_public_repositories = true
    members_can_create_private_repositories = true
    members_can_create_internal_repositories = true
    members_can_create_pages = true
    members_can_create_public_pages = true
    members_can_create_private_pages = true
    members_can_fork_private_repositories = true
    web_commit_signoff_required = true
    advanced_security_enabled_for_new_repositories = false
    dependabot_alerts_enabled_for_new_repositories=  false
    dependabot_security_updates_enabled_for_new_repositories = false
    dependency_graph_enabled_for_new_repositories = false
    secret_scanning_enabled_for_new_repositories = false
    secret_scanning_push_protection_enabled_for_new_repositories = false
  }
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                                                         | Description                                                                                                  | Type   | Default  | Required | Choices                       |
| ------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | :----: | :------: | :------: | :---------------------------: |
| billing_email                                                | The billing email address for the organization.                                                              | string |          | yes      |                               |
| company                                                      | The company name for the organization.                                                                       | string |          |          |                               |
| blog                                                         | The blog URL for the organization.                                                                           | string |          |          |                               |
| email                                                        | The email address for the organization.                                                                      | string |          |          |                               |
| twitter_username                                             | The Twitter username for the organization.                                                                   | string |          |          |                               |
| location                                                     | The location for the organization.                                                                           | string |          |          |                               |
| name                                                         | The name for the organization.                                                                               | string | Test     | yes      |                               |
| description                                                  | The description for the organization.                                                                        | string |          |          |                               |
| has_organization_projects                                    | Whether or not organization projects are enabled for the organization.                                       | bool   | true     |          |                               |
| has_repository_projects                                      | Whether or not repository projects are enabled for the organization.                                         | bool   | true     |          |                               |
| default_repository_permission                                | The default permission for organization members to create new repositories.                                  | string | read     |          | read, write, admin, or none.  |
| members_can_create_repositories                              | Whether or not organization members can create new repositories.                                             | bool   | false    |          |                               |
| members_can_create_public_repositories                       | Whether or not organization members can create new public repositories.                                      | bool   | false    |          |                               |
| members_can_create_private_repositories                      | Whether or not organization members can create new private repositories.                                     | bool   | false    |          |                               |
| members_can_create_internal_repositories                     | Whether or not organization members can create new internal repositories. For Enterprise Organizations only. | bool   | false    |          |                               |
| members_can_create_pages                                     | Whether or not organization members can create new pages.                                                    | bool   | false    |          |                               |
| members_can_create_public_pages                              | Whether or not organization members can create new public pages.                                             | bool   | false    |          |                               |
| members_can_create_private_pages                             | Whether or not organization members can create new private pages.                                            | bool   | false    |          |                               |
| members_can_fork_private_repositories                        | Whether or not organization members can fork private repositories.                                           | bool   | false    |          |                               |
| web_commit_signoff_required                                  | Whether or not commit signatures are required for commits to the organization.                               | bool   | false    |          |                               |
| advanced_security_enabled_for_new_repositories               | Whether or not advanced security is enabled for new repositories.                                            | bool   | false    |          |                               |
| dependabot_alerts_enabled_for_new_repositories               | Whether or not dependabot alerts are enabled for new repositories.                                           | bool   | false    |          |                               |
| dependabot_security_updates_enabled_for_new_repositories     | Whether or not dependabot security updates are enabled for new repositories.                                 | bool   | false    |          |                               |
| dependency_graph_enabled_for_new_repositories                | Whether or not dependency graph is enabled for new repositories.                                             | bool   | false    |          |                               |
| secret_scanning_enabled_for_new_repositories                 | Whether or not secret scanning is enabled for new repositories.                                              | bool   | false    |          |                               |
| secret_scanning_push_protection_enabled_for_new_repositories | Whether or not secret scanning push protection is enabled for new repositories.                              | bool   | false    |          |                               |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


