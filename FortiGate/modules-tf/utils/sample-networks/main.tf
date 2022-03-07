resource "google_compute_network" "vpcs" {
  count                   = length(var.networks)
  name                    = "${var.prefix}vpc-${var.networks[count.index]}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnets" {
  count         = length(var.networks)
  name          = "${var.prefix}sb-${var.networks[count.index]}"
  region        = var.region
  network       = google_compute_network.vpcs[count.index].self_link
  ip_cidr_range = "${var.ip_cidr_2oct}.${count.index}.0/24"
  private_ip_google_access = true
}

output "vpcs" {
  value = google_compute_network.vpcs[*].self_link
}

output "subnets" {
  value = google_compute_subnetwork.subnets[*].self_link
}

output "subnet_names" {
  value = google_compute_subnetwork.subnets[*].name
}
