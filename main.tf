terraform {
  
      cloud {
    organization = "firstcompany1"

    workspaces {
      name = "firstworkspace"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = > "4.0"
          }
    
  }
  provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAYF2OOTZPVWMMCAY2"
  secret_key = "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"
}

}
 
 


resource "aws_instance" "myinst" {
    ami = "ami-0cff7528ff583bf9a"
    instance_type = "t2.micro"
}