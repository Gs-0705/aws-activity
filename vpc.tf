resource "aws_vpc" "suresh" {
  cidr_block = var.vpc_config.cidr_block
  tags = var.vpc_config.tags

}

resource "aws_subnet" "subnets" {
  count = 4
  availability_zone = var.subnets_config[count.index].availability_zone
  vpc_id            = aws_vpc.suresh.id
  cidr_block        = var.subnets_config[count.index].cidr_block
  tags = var.subnets_config[count.index].tags

}
