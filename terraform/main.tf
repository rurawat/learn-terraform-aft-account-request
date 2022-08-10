module "VPC" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rawat_ruchi@yahoo.com"
    AccountName               = "vpc-one"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "rucank07@gmail.com"
    SSOUserFirstName          = "vpcruch"
    SSOUserLastName           = "vpcrawat"
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
