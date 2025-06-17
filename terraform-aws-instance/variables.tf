variable "ami_id"{
    type    = string
    default = "ami-09c813fb71547fc4f" 
}

variable "instance_type"{
    type = string
    default = "t2.micro"

    validation {
        condition     = contains(["t2.micro", "t3.micro", "t3.small"], var.instance_type)
        error_message = "Instance type is limited to t2.micro, t3.micro or t3.small"
    }
}

variable "sg_ids"{
    type = list
}

variable "tags" {
    type = map
}