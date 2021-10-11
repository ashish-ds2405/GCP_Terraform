provider "google" {
  credentials = file("${path.module}/credentials.json")
  project = "terraform-project-328206"
  region = var.region-resource
}