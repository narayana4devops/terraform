# ec2 variables

variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

# sg variables

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

# r53 variables
variable "zone_id" {
    default = "Z0235377LLZP9NE0RDEE"
}

variable "domain_name" {
    default = "daws78s1.online"
}