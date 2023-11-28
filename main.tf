provider "google" {
  credentials = file("/home/tejasnivatkar1/tera/terraform-406521-2f1526070c12.json")
  project     = "terraform-406521"
  region      = "asia-south1"
}

resource "google_project" "project" {
  name       = "terraform"
  project_id = "terraform-406521"
}

resource "google_compute_network" "network" {
  name                    = "tera-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_instance" "vm_instance" {
  name         = "tera-vm"
  machine_type = "n1-standard-1"
  zone         = "asia-south1-c"
  project      = google_project.project.project_id
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
  network_interface {
    network = google_compute_network.network.name
  }
}

resource "google_compute_address" "public_ip" {
  name    = "tera-ip"
  project = google_project.project.project_id
}

resource "google_compute_firewall" "firewall" {
  name    = "allow-ssh-and-3333"
  network = google_compute_network.network.name

  allow {
    protocol = "tcp"
    ports    = ["22", "3333"]
  }

  source_ranges = ["0.0.0.0/0"]
}

output "public_ip" {
  value = google_compute_address.public_ip.address
}

