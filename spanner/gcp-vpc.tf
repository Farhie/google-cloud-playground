resource "google_compute_network" "environment_vpc" {
  name = "${var.environment}-vpc"
}
