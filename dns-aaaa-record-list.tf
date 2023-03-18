##############################################
## KopiCloud AD API - List DNS AAAA Records ##
##############################################

# List All DNS AAAA Records
data "kopicloud_dns_aaaa_records_list" "test_aaaa_all" {
}

# Returns All DNS AAAA Records
output "OUTPUT_dns_aaaa_records_list_all" {
  description = "List ALL existing DNS AAAA Records"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_all
}

#######################################

# Filter DNS AAAA Records with the Zone Name
data "kopicloud_dns_aaaa_records_list" "test_aaaa_zone_name" {
  zone_name = "kopicloud.local"
}

# Returns all DNS AAAA Records that matches the Zone Name
output "OUTPUT_dns_aaaa_records_list_zone_name" {
  description = "List existing DNS AAAA Records filtered by Zone Name"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_zone_name
}

#######################################

# Filter DNS AAAA Records with an IPv6 Address 
data "kopicloud_dns_aaaa_records_list" "test_aaaa_ip" {
  ipv6_address = "2001:db8:3333:4444:5555:6666:7777:8888"
}

# Returns all DNS AAAA Records that matches the IPv6 Address 
output "OUTPUT_dns_aaaa_records_list_ip_address" {
  description = "List existing DNS AAAA Records filtered by IPv6 Address"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_ip
}

#######################################

# Filter DNS AAAA Records with a Hostname
data "kopicloud_dns_aaaa_records_list" "test_aaaa_hostname" {
  hostname = "computer70v6"
}

# Returns all DNS AAAA Records that matches the Hostname
output "OUTPUT_dns_aaaa_records_list_hostname" {
  description = "List existing DNS AAAA Records filtered by Hostname"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_hostname
}

