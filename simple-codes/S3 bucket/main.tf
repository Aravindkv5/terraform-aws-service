resource "aws_s3_bucket" "myfirstterraformbucket" { 
    bucket = "new-s3-bucket-terraform"  #this is the s3 bucket name
    tags = { 
        Description = "My first S3 Bucket through Terraform"
    
    }
  
}

#tags not working it thorws some error, syeso removed in cmd