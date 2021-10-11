//Creating app server instance group

resource "google_compute_instance_group_manager" "appserver" {
  name               = "${local.resource_name_prefix}-app-instancegroup"
  base_instance_name = "app1srv"
  zone               = var.zone
  version {
    name              = "appserver"
    instance_template = google_compute_instance_template.app1.id
  }
}

resource "google_compute_autoscaler" "appautoscaler" {
  name   = "app-autoscaler"
  zone = var.zone
  target = google_compute_instance_group_manager.appserver.id

  autoscaling_policy {
    max_replicas    = 3
    min_replicas    = 1
    cooldown_period = 60

    cpu_utilization {
      target = 0.5
    }
  }
}