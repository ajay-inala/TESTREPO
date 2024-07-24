provider "google" {
  project     = "Project-cicd-testing"
  region      = "us-central1"
}
resource "google_compute_instance" "terraform" {
  name         = "terraform"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
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
 service_account {
    scopes = ["233044675135-compute@developer.gserviceaccount.com"]
  }
}
