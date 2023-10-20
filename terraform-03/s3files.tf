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

resource "aws_s3_bucket" "mys3bucket" {
  bucket  = var.s3_bucket_names[count.index]
  count = 5
}


