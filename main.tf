terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.50.0"
    }
  }
}

provider "tfe" {
  # You can omit this block in TFE VCS-driven workspaces
}

resource "tfe_registry_module" "registry-catalog" {
  name         = "sample-module"
  organization = "Harshit" # Make sure this matches your actual TFE org name
  provider     = "aws"      # This is correct as a string here

  vcs_repo {
    identifier         = "harshitcorp09/terraform-aws-ec2-instance"
    display_identifier = "harshitcorp09/terraform-aws-ec2-instance"
    branch             = "main"
  }
}
