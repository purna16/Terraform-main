provider "aws" {
    region = "us-east-1"
    access_key = "AKIA5NB53FOYR5NVLHPB"
    secret_key = "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"
}

resource "aws_vpc" "development-vpc" {
    cidr_block = var.cidr_block[0]
    tags = {
        Name: "developement-vpc"
        vpc_env: "dev"
    }
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = var.cidr_block[1]
    availability_zone = "us-east-1a"
    tags = {
        Name: "dev-subnet-1"
    }

}

variable "cidr_block" {
    description = "cidr blocks for vpc and subnets"
}

# variable "subnet_cidr_block" {
#     description = "subnet cidr"
# }
