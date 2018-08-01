# Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file
# except in compliance with the License. A copy of the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is distributed on an "AS IS"
# BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under the License.
variable "region" {
  default = "us-east-1"
}
variable "ip_range" {
  default = "0.0.0.0/0" # Change to your IP Range!
}
variable "availability_zones" {
  # No spaces allowed between az names!
  default = ["us-west-2a","us-west-2b","us-west-2c"]
}
variable "key_name" {
  default = "GDT-POC-Keys"
}
variable "instance_type" {
  default = "t2.nano"
}
variable "asg_min" {
  default = "2"
}
variable "asg_max" {
  default = "5"
}
variable "asg_desired" {
  default = "2"
}
# Amazon Linux AMI
# Most recent as of 2015-12-02
variable "amis" {
  default = {
    us-east-1 = "ami-60b6c60a"
    us-west-2 = "ami-f0091d91"
  }
}
variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "172.16.32.0/20"
}
variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default = "172.16.47.0/24"
}
variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default = "172.16.34.0/24"
}
variable "public_subnet_id" {
  description = "CIDR for the Public Subnet"
  default = "subnet-20a9b069"
}
variable "bastion_ssh_sg_id" {
  default = "sg-e0fd7b90"
}
variable "private_subnet_id" {
  description = "CIDR for the Private Subnet"
  default = "subnet-00bda449"
}
variable "ssh_from_bastion_sg_id" {
  default = "sg-e0fd7b90"
}
variable "web_access_from_nat_sg_id" {
   default = "sg-325bed40"
}
#variable "aws_s3_bucket.adobe-team-test2-bucket.id" {}
#variable "aws_s3_bucket.adobe-team-test2-bucket.arn" {}
