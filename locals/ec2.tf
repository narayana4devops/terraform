# resource <resource-type> <resource-name>

resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = local.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = local.instance_type


    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]
        }
    )
}

resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    # terraform block
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocal
        cidr_blocks      = var.allow_cidr
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = var.allow_cidr
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "lpathi"
    }
}