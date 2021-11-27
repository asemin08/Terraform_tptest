#Instanciation module sg
module "sg" {
  source        = "../modules/sg"
  auteur = "app-allan"
}

#Instanciation module ebs
module "ebs" {
  source        = "../modules/ebs"
  capacite_disque = 5
  auteur = "app-allan"
}

# Instanciation module eip
module "eip" {
  source        = "../modules/eip"
  auteur = "app-allan"
}
# Instanciation module ec2
module "ec2" {
  source        = "../modules/ec2"
  auteur        = "app-allan"
  type_instance = "t2.micro"
}


