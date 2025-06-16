resource "aws_instance" "this"{
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0397920120499858a"]
    tags = {
        Name = "Instance"
    }
}