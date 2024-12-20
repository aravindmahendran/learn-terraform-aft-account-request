module "aft-test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aravindabi094.terraform.aft@gmail.com"
    AccountName               = "provisioned_by_aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "aravindabi094.terraform.aft@gmail.com"
    SSOUserFirstName          = "Learn"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-Test"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft-test"
}
