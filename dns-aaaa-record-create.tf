################################################
## KopiCloud AD API - Create DNS AAAA Records ##
################################################

# Create a DNS AAAA Record for a computer
resource "kopicloud_dns_aaaa_record" "test_aaaa" {
  hostname     = "computer75v6"
  ipv6_address = "2340:0023:AABA:0A01:0055:5054:9ABC:ABB0"
  zone_name    = "kopicloud.local"
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

