resource "google_compute_firewall" "webfirewall" {
  name        = "${local.resource_name_prefix}-web-firewall-rule"
  network     = google_compute_network.vpc-1.id 
  description = "Creates firewall rule targeting tagged instances"

 allow {
     protocol = "icmp"
    
}

  allow {
    protocol  = "tcp"
    ports     = var.app_inbound_ports
  }
  target_tags = var.tags

}