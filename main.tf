terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.50.0"
    }
  }
}

resource "tfe_registry_module" "registry-catalog" {
  name         = "sample-module"
  organization = "Harshit"
  provider     = "aws"

  vcs_repo {
    identifier         = "harshitcorp09/terraform-aws-ec2-instance"
    display_identifier = "harshitcorp09/terraform-aws-ec2-instance" # This is the field that may cause drift
    branch             = "main"
  }
}
