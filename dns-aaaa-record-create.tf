################################################
## KopiCloud AD API - Create DNS AAAA Records ##
################################################

# Create a DNS AAAA Record for a computer
resource "kopicloud_dns_aaaa_record" "test_aaaa" {
  hostname   = "atftestvm01"
  ip_address = "100.30.1.1"
  zone_name  = "kopicloud.local"
}

# Output Created DNS AAAA Record 
output "dns_aaaa_record" {
  description = "Created DNS AAAA Record"
  value       = resource.kopicloud_dns_aaaa_record.test_aaaa
}

output "dns_aaaa_record_hostname" {
  description = "Hostname of Created DNS AAAA Record"
  value       = resource.kopicloud_dns_aaaa_record.test_aaaa.hostname
}
