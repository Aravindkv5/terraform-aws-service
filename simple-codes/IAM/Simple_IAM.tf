resource "aws_iam_user" "username" {
name = "aravind" # Aravind IAM user will be created. 
}

#Check below link
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user
#need to check random variables provider in terraform to find out whetehr we can create a random password and put it in output file. 
