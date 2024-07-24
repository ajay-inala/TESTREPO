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
resource "google_service_account" "default" {
account_id   = "106467782216096746723"
display_name = "Custom SA for VM Instance"
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
}
