data "aws_ami" "ubuntu_bionic_ami" {
  most_recent = true
  owners = ["${var.id_compte_ubuntu}"]

  filter {
    name   = "name"
    values = ["${var.nom_ubuntu_ami}"]
  }
}

resource "aws_instance" "allan-ec2" {
  ami             = data.aws_ami.ubuntu_bionic_ami.id
  instance_type   = var.type_instance
  key_name        = var.cle_ssh
  availability_zone = "${var.zone_dispo}"
  security_groups = ["${var.securite_groupe}"]
  tags = {
    Name = "${var.auteur}-ec2"
  }

}

