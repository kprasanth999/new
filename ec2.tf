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
  user_data       = file("scripts/apache.sh")
  vpc_security_group_ids = [aws_security_group.ec2-sg.id] 
  key_name        = aws_key_pair.key.key_name
  iam_instance_profile = aws_iam_instance_profile.s3_ec2_profile.name
  tags            = local.web_tags
}