provider "aws" {
    region = us-east-2
    profile = default
}

resource "aws_instance" "site"{
    ami = "aami-00399ec92321828f5"
    key_name = "centralkey"
    vpc_security_group_ids = "sg-0e694bb317817eff4"
    tags = {
        Name = var.name
        group = var.group
    }
}