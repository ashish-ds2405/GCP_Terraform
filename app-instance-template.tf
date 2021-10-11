//Creating a instance group template for web server

resource "google_compute_instance_template" "app1" {
  name        = "${local.resource_name_prefix}-web-instance-template"
  description = "This template is used to create application server instances."

  tags = var.tags

  labels = local.common_tags

  instance_description = "description assigned to appserver instances"
  machine_type         = var.machine_type
  can_ip_forward       = false

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
  }

  // Create a new boot disk from an image
  disk {
    source_image      = var.image
    auto_delete       = false
    boot              = true
  }
  
  network_interface {
    network = google_compute_network.vpc-1.id 
    subnetwork = google_compute_subnetwork.app_subnet.id
  }
}