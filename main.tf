provider "google" {
  project     = "Project-cicd-testing"
  region      = "us-central1"          
}
resource "google_storage_bucket" "test-bucket" {
  name          = "inala-storage-bucket"
  location      = "us-central1"
  force_destroy = true
  public_access_prevention = "enforced"
}
network_interface {
    network = "default"
    access_config {
    }
}
resource "google_compute_instance" "terraform" {
  name         = "terraform"
  machine_type = "e2-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}
