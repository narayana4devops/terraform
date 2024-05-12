variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID" #optional

}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}

variable "sg_name" {
    default = "allow_ssh"
}


variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocal" {
    default = "tcp"
}

variable "allow_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}