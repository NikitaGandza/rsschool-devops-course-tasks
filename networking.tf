

resource "aws_vpc" "main" {
 cidr_block = "10.0.0.0/16"

 tags = {
   Name = "rsschool-vpc"
 }
}

resource "aws_subnet" "public_subnet_eur_north_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_a
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public subnet eu-north-1a"
  }
}

resource "aws_subnet" "private_subnet_eur_north_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_a
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Private subnet eu-north-1a"
  }
}

resource "aws_subnet" "public_subnet_eur_north_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_b
  availability_zone = "eu-north-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public subnet eu-north-1b"
  }
}

resource "aws_subnet" "private_subnet_eur_north_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_b
  availability_zone = "eu-north-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Private subnet eu-north-1b"
  }
}


resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name    = "public_route_table"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name    = "private_route_table"
  }
}

resource "aws_route_table_association" "public_assoc_a" {
  subnet_id      = aws_subnet.public_subnet_eur_north_1a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_assoc_b" {
  subnet_id      = aws_subnet.public_subnet_eur_north_1b.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_assoc_a" {
  subnet_id      = aws_subnet.private_subnet_eur_north_1a.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_assoc_b" {
  subnet_id      = aws_subnet.private_subnet_eur_north_1b.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_internet_gateway" "rsschool_internet_gateway" {
  tags = {
    Name = "rsschool_internet_gateway"
  }
  vpc_id = aws_vpc.main.id
}


resource "aws_route" "public_internet_igw_route" {
  route_table_id = aws_route_table.public_route_table.id
  gateway_id = aws_internet_gateway.rsschool_internet_gateway.id
  destination_cidr_block = "0.0.0.0/0"
}