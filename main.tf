provider aws {
    region = "us-west-2"
}
resource "aws_instance" "HelloWorld" {
    ami = "ami-0606dd43116f5ed57"
    instance_type = var.instance_type
    user_data = file("apache.sh")

    tags = {
    Name = var.instance_name
  }
}