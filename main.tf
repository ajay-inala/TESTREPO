provider "google" {
  project     = "Project-cicd-testing"
  region      = "us-central1"         
}
resource "google_storage_bucket" "test-bucket3" {
  name          = "Divya-storage-bucket4"
  location      = "us-central1"
  force_destroy = true
  public_access_prevention = "enforced"
}

