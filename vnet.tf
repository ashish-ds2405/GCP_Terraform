resource "google_compute_network" "vpc-1" {
    name = "${local.resource_name_prefix}-myvpc"
    auto_create_subnetworks = false
    
}

# create a web subnet

resource "google_compute_subnetwork" "web_subnet" {
  name = "${local.resource_name_prefix}-web-subnet"
  ip_cidr_range = var.web_subnet_CIDR
  region = var.region-resource
  network = google_compute_network.vpc-1.name
  
}

# create a app subnet

resource "google_compute_subnetwork" "app_subnet" {
  name = "${local.resource_name_prefix}-app-subnet"
  ip_cidr_range = var.app_subnet_CIDR
  region = var.region-resource
  network = google_compute_network.vpc-1.name
  
}