resource  "aws_s3_bucket" "tf-bucket" {
  bucket= "dishi-tf"
  tags={
    Name="dishi-tf"
  }
}
