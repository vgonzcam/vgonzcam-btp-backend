terraform {
  cloud {

    organization = "vgonzcam_btp_backend"

    workspaces {
      name = "vgonzcam-btp-backend"
    }
  }

  required_providers {
    btp = {
      source  = "SAP/btp"
      version = "1.8.0"
    }
  }
}

variable "globalaccount" {
  type        = string
  description = "The subdomain of the SAP BTP global account."
}

variable "username" {
  type        = string
  description = "The subdomain of the SAP BTP global account."
}

variable "password" {
  type        = string
  description = "The subdomain of the SAP BTP global account."
}


# Configure the BTP Provider
provider "btp" {
  globalaccount = var.globalaccount
  username      = var.username
  password      = var.password
}

output "hello" {
  value = "Hello from main.tf! (with Mario)"
}

data "btp_directories" "all" {}
output "btp_directories-all" {
  value = data.btp_directories.all
}

