module "dev-app" {
  source  = "./modules"
  my_env="dev"
  instance_type="t2.micro"
  ami_id="ami-0dee22c13ea7a9a67"
  instance_count=1
} 

module "stg-app" {
  source  = "./modules"
  my_env="stg-app"
  instance_type="t2.medium"
  ami_id="ami-0dee22c13ea7a9a67"
  instance_count=2
} 

module "production" {
  source  = "./modules"
  my_env="production"
  instance_type="t2.large"
  ami_id="ami-0dee22c13ea7a9a67"
  instance_count=3
} 