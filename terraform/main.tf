module "vpctesting" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cloudpractice12@gmail.com"
    AccountName               = "vpctesting"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rucank07@gmail.com"
    SSOUserFirstName          = "ruch"
    SSOUserLastName           = "rawa"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "vpctesting"
}
