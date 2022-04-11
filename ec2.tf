resource "aws_instance" "helloworld" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = "us-east-1a"
  key_name          = "terraform1"
  tags = {
    Name = "Hello world"
  }

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
