module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ruchita66@yahoo.com"
    AccountName               = "sandbox-one"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rucank07@gmail.com"
    SSOUserFirstName          = "ruchita"
    SSOUserLastName           = "rawat"
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

  account_customizations_name = "sandbox"
}
