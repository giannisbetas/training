#####  DNSIMPLE  #####

# variable "dnsimple_account" {}
# variable "dnsimple_token" {}

# variable "dnsimple_domain" {}


#####  AWS  #####
variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_region" {
  default = "eu-west-1"
}

variable "num_webs" {
  default = 3
}
