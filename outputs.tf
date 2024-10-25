output "my_ec2_ip"{
    value= aws_instance.tf-instance.public_ip
}