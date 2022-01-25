variable "aws-vpc-cidr" {
    default = "10.10.0.0/16"
    description = "Aws Vpc Cidr"
}

variable "region" {
    description = "AWS region specification"
    default = "ap-south-1"
    type = string
}

variable "nat_ami_id" {
    type = map
    description = "AMI id of Nat instance"
    default = {
       ap-south-1     = "ami-00999044593c895de"
       ap-southeast-1 = "ami-0003ce8d47722ef67"  
    } 
}   

variable "instance_type" {
    description = "instance size"
    default = "t2.micro"
    type = string
}

variable "ec2_ami_id" {
    type = map
    description = "AMI id of ec2 instances"
    default = {
       ap-south-1     = "ami-0af25d0df86db00c1"
       ap-southeast-1 = "ami-05a4f10c8cc1c51fc"  
    } 
}   

variable "ec2_count" {
    description = "instance count"
    default = "1"
    type = string
}

variable "web_tags" {
    type = map
    description = "web tags"
    default = {
      Name = "Webserver"
    }
}


variable "bucket_name" {
    description = "s3-bucket-name"
    default = "my-tf-prasanth-bucket"
    type = string
}
