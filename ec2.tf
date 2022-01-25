locals {
  env_tags = {
    Environment = terraform.workspace  
  }
  web_tags = merge(var.web_tags, local.env_tags)
}

resource "aws_instance" "ec2" {
  count           = var.ec2_count
  ami             = var.ec2_ami_id[var.region]
  instance_type   = var.instance_type
  subnet_id       = local.pub_sub_ids[count.index]
  tags            = local.web_tags
}
