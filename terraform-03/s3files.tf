terraform{
    backend "s3"{
        bucket = "lk-training-statefile"
        key ="fousiya/s3file.tfstate"
        region = "eu-west-1"
    }
}


provider "aws" {
  region = "eu-west-1"
}

# creating bucket
resource "aws_s3_bucket" "mys3bucket" {
  for_each  = var.s3_bucket_names
  bucket = each.key
}


resource "aws_s3_bucket_policy" "deny_delete_bucket" {
  for_each = aws_s3_bucket.mys3bucket

  bucket = each.key
  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "MYBUCKETPOLICY",
    Statement = [
      {
        Effect    = "Deny"
        Principal = "*"
        Action    = "s3:DeleteBucket"
        Resource  = each.value.arn
        
      }
    ]
  })
}

