output "ami_id"{
    value = aws_instance.this.ami
}

output "private_ip"{
    value = aws_instance.this.private_ip
}

output "public_ip"{
    value = aws_instance.this.public_ip
}