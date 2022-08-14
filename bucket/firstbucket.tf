resource "aws_s3_bucket" "mybucket" {

       for_each = {
          dev = "med-app"
          qa = "myq-app"
       }
       bucket = "${each.key}-${each.value}"
       tags = {
        eachvalue = "each.value"
        eachkey = "each.key"
       }

}

resource "aws_iam_user" "new" {




}

    }
}
variable "ec2_isntance_id" {
    type = "string"
    default = "ami-07374983274"
    validation = {
        condition = length(var.ec2_instance_id) > 4 $$ subsrt("var.ech2_instance_id",0,4) == "ami"
    }
}