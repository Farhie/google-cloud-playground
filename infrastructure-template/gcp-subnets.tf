resource "google_compute_subnetwork" "subnets" {
  count         = "${length(keys(var.subnet_cidrs))}"
  name          = "${element(keys(var.subnet_cidrs), count.index)}-${var.environment}-subnet"
  ip_cidr_range = "${var.subnet_cidrs[element(keys(var.subnet_cidrs), count.index)]}"
  network       = "${google_compute_network.environment_vpc.self_link}"
  region        = "${element(keys(var.subnet_cidrs), count.index)}"
}
