resource "google_service_account" "default" {
  account_id   = "sa-${var.env}-${var.instance_name}"
  display_name = "Custom SA for VM Instance"
}