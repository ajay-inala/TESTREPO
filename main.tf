provider "google" {
  project     = "Project-cicd-testing"
  region      = "us-central1"         
  credentials = file("secrets.json")
}
resource "google_storage_bucket" "test-bucket2" {
  name          = "inala-storage-bucket2"
  location      = "us-central1"
  force_destroy = true
  public_access_prevention = "enforced"
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

