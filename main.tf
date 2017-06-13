#
# DO NOT DELETE THESE LINES!
#
# Your AMI ID is:
#
#     ami-a4f9f2c2
#
# Your subnet ID is:
#
#     subnet-9a479ed3
#
# Your security group ID is:
#
#     sg-00100979
#
# Your Identity is:
#
#     hdays-michel-haddock
#

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

test...

terraform {
  backend "atlas" {
    name = "giannis/training"
  }
}

resource "aws_instance" "web" {
  count                  = "${var.num_webs}"
  ami                    = "ami-a4f9f2c2"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-9a479ed3"
  vpc_security_group_ids = ["sg-00100979"]

  tags {
    Identity = "hdays-michel-haddock"
    Tag01    = "test01"
    Tag02    = "test02"
    Name     = "web ${count.index +1}/${var.num_webs}"
  }
}
