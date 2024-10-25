#key pair generation 
resource "aws_key_pair" "deployer"{
    key_name= "tws-terra-key"
    public_key= file("/home/devanshiprasad/terraform/terraform-aws/terra-key.pub")
}
#vpc creation 
resource "aws_default_vpc" "default"{
  
}

# security group for ec2 for ssh and opening port 22 :)
resource "aws_security_group" "tfsecurity"{
    name="allow ports"
    description="for opening ports for ec2 instance"
    vpc_id= aws_default_vpc.default.id #interpolation (accessing any resource internally using their resource type and name)

    ingress{
        description="for ssh"
        from_port= 22
        to_port= 22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }

    egress{
        description="for outgoing requests"
        from_port=0
        to_port=0
        protocol="-1"
        cidr_blocks=["0.0.0.0/0"]
    }
    }
    resource "aws_instance" "tf-instance"{
        ami= var.ami_id #ubuntu 
        instance_type= "t2.micro"
        key_name= aws_key_pair.deployer.key_name
        security_groups= [aws_security_group.tfsecurity.name]
        tags={
            Name="terra-automate"
        }


    }

