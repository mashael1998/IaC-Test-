resource "google_compute_address" "default" {
  name   = "my-test-static-ip-address"
  region = "us-central1"
}
boot_disk { initialize_params { image = "debian-cloud/debian-10" } } 

network_interface { network = "default" } // Missing security-related configurations } 

output "example_output" { value = google_compute_instance.example_instance.network_interface.0.access_config.0.assigned_nat_ip }
