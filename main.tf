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

output "hello" {
  value = "Hello from main.tf! (with Mario)"
}

