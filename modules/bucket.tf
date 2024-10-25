#s3 bucket 
resource  "aws_s3_bucket" "tf-bucket" {
  bucket= "${var.my_env}-dishi-tf"
  tags={
    Name="${var.my_env}-dishi-tf"
    environment= var.my_env
  }
}
