
resource "aws_vpc" "mcm" {
  cidr_block = var.aws_vpc
}

resource "aws_internet_gateway" "gw" {
  vpc_id = local.vpc_id
  
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.aws_public_subnet
  availability_zone = data.aws_availability_zones.mcm.names[0]

  tags = {
    Name = "MCM"
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id     = local.vpc_id
  cidr_block = var.aws_public_subnet1
  availability_zone = data.aws_availability_zones.mcm.names[0]

  tags = {
    Name = "MCM"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.aws_private_subnet
  availability_zone = data.aws_availability_zones.mcm.names[1]

  tags = {
    Name = "MCM"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id     = local.vpc_id
  cidr_block = var.aws_private_subnet1
  availability_zone = data.aws_availability_zones.mcm.names[1]

  tags = {
    Name = "MCM"
  }
}

resource "aws_subnet" "db_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.aws_db_subnet
  availability_zone = data.aws_availability_zones.mcm.names[2]

  tags = {
    Name = "MCM"
  }
}

resource "aws_subnet" "db_subnet1" {
  vpc_id     = local.vpc_id
  cidr_block = var.aws_db_subnet1
  availability_zone = data.aws_availability_zones.mcm.names[2]

  tags = {
    Name = "MCM"
  }
}


resource "aws_instance" "mcm_server" {
  ami           = data.aws_ami.mcm.id
  instance_type = var.aws_instance
  subnet_id = local.private_subnet_id
  key_name = data.aws_key_pair.mcm.key_name

  tags = {
    Name = "MCM"
  }
}

resource "aws_instance" "mcm_server1" {
  ami           = data.aws_ami.mcm.id
  instance_type = var.aws_instance
  subnet_id = local.private_subnet1_id
  key_name = data.aws_key_pair.mcm.key_name

  tags = {

  }
}

resource "aws_instance" "mcm_server2" {
  ami           = data.aws_ami.mcm.id
  instance_type = var.aws_instance
  subnet_id = local.public_subnet_id
  key_name = data.aws_key_pair.mcm.key_name

  tags = {
    Name = "MCMCG_web"
  }
}

resource "aws_eip" "mcm_server2" {
  instance   = aws_instance.mcm_server2.id
}

