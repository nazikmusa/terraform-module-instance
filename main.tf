provider aws {
    region = "us-west-2"
}
resource "aws_instance" "HelloWorld" {
    ami = "ami-0a897ba00eaed7398"
    instance_type = var.instance_type
    user_data = file("apache.sh")

    tags = {
    Name = var.instance_name
  }
}