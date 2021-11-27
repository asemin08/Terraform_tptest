# Instanciation module ec2
module "ec2" {
  source        = "../modules/ec2"
  auteur        = "app-allan"
  type_instance = "t2.micro"
}
