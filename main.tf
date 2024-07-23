provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
  zone        = "           "
}


resource "google_storage_bucket" "Test-Bucket" {
  name          = "Test-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
