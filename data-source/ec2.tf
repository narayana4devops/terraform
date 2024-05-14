resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-0eab300d3a850c90e" ]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice" # This is shown in  AWS
    }
}