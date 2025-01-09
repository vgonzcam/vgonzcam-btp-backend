terraform {
  cloud {

    organization = "vgonzcam_btp_backend"

    workspaces {
      name = "vgonzcam-btp-backend"
    }
  }
}

output "hello" {
  value = "Hello from main.tf! (with Mario)"
}
