# Terraform Module for AWS EC2 Instance

This module is used for creating aws ec2 instance using terraform

## Inputs for this module

* `ami_id` -> This is optional by default it uses RHEL9 image.
* `instance_type` -> This is optional by default it is set to t2.micro. It is limited to t2.small, t3.micro and t3.small.
* `sg_ids` -> This is a mandatory and you need to mention your security groups in list format.
* `tags` -> This is a mandatory field and you need to mention the tags and it should be in map format

## Outputs for this module

* `ami_id` -> This ouput will give you the instance id.
* `private_ip` -> This output will give you the private ip of instance.
* `public_ip` -> This output will give you the public ip of instance.

## Example file to use this module

```
module "ec2"{
    source = "path-to-terraform-module-dir"
    sg_ids = ["sg-id"]
    tags = {
        Name = "EC2 Module Test"
    }
}

output "ami"{
    value = module.ec2.ami_id
}

output "private_ip"{
    value = module.ec2.private_ip
}

output "public_ip"{
    value = module.ec2.public_ip
}
```