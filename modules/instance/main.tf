
resource "google_compute_instance" "default" {
  name         = "${var.env}-${var.instance_name}"
  machine_type = "${var.instance_type}"
  zone         = "${var.zone}"

  tags = [var.env]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  # // Local SSD disk
  # scratch_disk {
  #   interface = "NVME"
  # }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}