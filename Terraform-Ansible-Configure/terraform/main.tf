resource "aws_instance" "sonarqube" {
  ami                    = "ami-0e35ddab05955cf57" # Replace with your desired AMI
  instance_type          = "t2.micro"
  key_name               = "devops"                 # Replace with your key pair name
  vpc_security_group_ids = ["sg-03dadd91b6cc35c6b"] # Replace with your security group ID
  tags = {
    Name = "sonarqube"
    Role = "sonarqube"
  }
}

resource "aws_instance" "nexus" {
  ami                    = "ami-0e35ddab05955cf57" # Replace with your desired AMI
  instance_type          = "t2.micro"
  key_name               = "devops"                 # Replace with your key pair name
  vpc_security_group_ids = ["sg-03dadd91b6cc35c6b"] # Replace with your security group ID
  tags = {
    Name = "nexus"
    Role = "nexus"
  }
}

resource "aws_instance" "docker" {
  ami                    = "ami-0e35ddab05955cf57" # Replace with your desired AMI
  instance_type          = "t2.micro"
  key_name               = "devops"                 # Replace with your key pair name
  vpc_security_group_ids = ["sg-03dadd91b6cc35c6b"] # Replace with your security group ID
  tags = {
    Name = "docker"
    Role = "docker"
  }
}

