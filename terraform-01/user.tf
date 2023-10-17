# creating users with different name

resource "aws_iam_user" "lb" {
  name  = var.elb_names[count.index]
  count = 3
}