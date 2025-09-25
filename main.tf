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
  organization = "Harshit" # Replace with your actual TFE org name
  provider     = aws       # ✅ No quotes — this is a literal string, not a reference

  vcs_repo {
    identifier         = "harshitcorp09/terraform-aws-ec2-instance"
    display_identifier = "harshitcorp09/terraform-aws-ec2-instance"
    branch             = "main"
  }
}
