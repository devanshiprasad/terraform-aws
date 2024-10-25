 resource "aws_instance" "tf-instance"{
        ami= var.ami_id #ubuntu 
        count= var.instance_count
        instance_type= "t2.micro"
        tags={
            Name="${var.my_env}-terra-automate"

        }

    }