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
