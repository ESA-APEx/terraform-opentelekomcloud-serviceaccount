terraform {
  required_providers {
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = "~>1.36"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.6"
    }
  }
  required_version = "~>1.7"
}
