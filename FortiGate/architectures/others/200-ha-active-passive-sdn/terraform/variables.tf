variable "credentials_file_path" {}
variable "service_account" {}
variable "project" {}
variable "name" {}
variable "region" {}
variable "zone" {}
variable "machine" {}
variable "image" {}
variable "license_file" {}
variable "license_file_2" {}
variable "active_port1_ip" {}
variable "active_port1_mask" {}
variable "active_port2_ip" {}
variable "active_port2_mask" {}
variable "active_port3_ip" {}
variable "active_port3_mask" {}
variable "active_port4_ip" {}
variable "active_port4_mask" {}
variable "passive_port1_ip" {}
variable "passive_port1_mask" {}
variable "passive_port2_ip" {}
variable "passive_port2_mask" {}
variable "passive_port3_ip" {}
variable "passive_port3_mask" {}
variable "passive_port4_ip" {}
variable "passive_port4_mask" {}
variable "mgmt_gateway" {}
variable "mgmt_mask" {}
# route module
variable "next_hop_ip" {}
# vpc module
variable "vpcs" {}
# subnet module
variable "subnets" {}
variable "subnet_cidrs" {}