module "VPCTRY" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rawatruchita@yahoo.com"
    AccountName               = "vpcTesone"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rucank07@gmail.com"
    SSOUserFirstName          = "vpcrh"
    SSOUserLastName           = "vpcrat"
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

  account_customizations_name = "test"
}
