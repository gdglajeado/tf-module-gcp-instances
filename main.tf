resource "google_compute_instance" "this" {
  count = terraform.workspace == "prd" ? 3 : 2

  name = format("%s-%s-%d", terraform.workspace, var.name, count.index)

  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    access_config {
      network_tier = var.access_config_network_tier
    }

    network    = var.network
    subnetwork = var.subnetwork
  }

  tags = var.tags

  labels = {
    environment = terraform.workspace
    project     = "gdglajeado"
  }
}
