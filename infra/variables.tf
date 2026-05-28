variable "region" {}
variable "vpc_cidr_block" {}
variable "subnet_cidr_blocks" {
  type = list(string)
}
variable "avail_zone" {
  type = list(string)
}
variable "env_prefix" {}
variable "instance_type" {}
variable "ami" {}
variable "key_name" {}