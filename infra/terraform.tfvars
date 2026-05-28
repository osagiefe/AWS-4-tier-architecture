vpc_cidr_block = "10.0.0.0/16"

subnet_cidr_blocks = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24",
  "10.0.4.0/24"
]

avail_zone = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
  "us-east-1d"
]

env_prefix    = "dev"
instance_type = "t2.small"
ami           = "ami-0360c520857e3138f"
region        = "us-east-1"
key_name      = "jenkins"