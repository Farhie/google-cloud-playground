resource "google_spanner_instance" "multi_region_spanner_instance" {
  config       = "nam3" # North America, default lead region `us-east4` aditional read write `us-east1`
  display_name = "main-instance"
  name         = "main-instance"
  num_nodes    = 1

  labels {
    Environment = "${var.environment}"
  }
}
