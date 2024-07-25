provider "google" {
  credentials = file("secrets.json")
  project     = "Project-cicd-testing"
  region      = "us-central1"
}
resource "google_compute_instance" "terraform" {
  name         = "terraform"
  machine_type = "e2-micro"
  zone         = "us-central1"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
 network_interface {
    network = "default"
    access_config {
    }
}
}
