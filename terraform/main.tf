provider "google" {
  project = "tkpd-stag-cloud-workshop-27c9"
  region  = "asia-southeast1"
  zone    = "asia-southeast1-a"
}

module "instance" {
  source = "./modules/gcp/instance"

  ci_name               = "mymachine-william"
  ci_machine_type       = "e2-medium"
  ci_boot_image_family  = "packer-myimage-william-1633152893-ubuntu-2004"
  ci_boot_image_project = "tkpd-stag-cloud-workshop-27c9"
  ci_boot_disk_size     = 20
  ci_tags               = ["mymachine-william"]
  ci_metadata = {
    # ask participant to create the ssh-key using ssh-keygen
    "ssh-keys" = <<EOL
root:${file("/root/.ssh/id_rsa.pub")}
EOL
  }

  ci_firewall_allow_ports = [{
    name     = "allow-http"
    ports    = ["80"]
    protocol = "tcp"
  }]
}

