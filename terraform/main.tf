# Configure the IBM Cloud Provider
provider "ibm" {
  softlayer_username = "${var.ibm_sl_username}"
  softlayer_api_key  = "${var.ibm_sl_api_key}"
}

resource "ibm_compute_vm_instance" "iphong" {
  hostname             = "iphong"
  domain               = "tftest.com"
  os_reference_code    = "DEBIAN_8_64"
  datacenter           = "seo01"
  network_speed        = 10
  hourly_billing       = true
  local_disk           = false
  private_network_only = false
  flavor_key_name      = "B1_2X8X25"

  // It should be false
  dedicated_acct_host_only = false
}
