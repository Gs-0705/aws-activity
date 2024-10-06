variable "vpc_config" {
  type = object({
    cidr_block  = string
    tags        = map(string)

  })
  description = "vpc configration"
  default = {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name    = "base"
      Env     = "Dev"
      Project = "Learning"
    }
  }

}
variable "subnets_config" {
  type = list(object({
    cidr_block        = string
    availability_zone = string
    tags              = map(string)
  }))
  description = "subnets configaration "
  default = [{
    cidr_block = "10.0.0.0/24"
    tags = {
      Name    = "w-1"
      Env     = "Dev"
      Project = "Learning"

    }
    availability_zone = "ap-south-1a"
    }, {
    cidr_block = "10.0.1.0/24"
    tags = {
      Name    = "w-2"
      Env     = "Dev"
      Project = "Learning"

    }
    availability_zone = "ap-south-1a"

    }, {
    cidr_block = "10.0.2.0/24"
    tags = {
      Name    = "w-3"
      Env     = "Dev"
      Project = "Learning"

    }
    availability_zone = "ap-south-1a"


    }, {
    cidr_block = "10.0.3.0/24"
    tags = {
      Name    = "w-4"
      Env     = "Dev"
      Project = "Learning"

    }
    availability_zone = "ap-south-1a"

    }
  ]
}

