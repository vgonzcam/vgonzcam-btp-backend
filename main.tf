terraform { 
  cloud { 
    
    organization = "vgonzcam_btp_backend" 

    workspaces { 
      name = "vgonzcam-btp-backend" 
    } 
  } 
}
