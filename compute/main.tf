resource "aws_key_pair" "primeStore-key-pair" {
  key_name   = "primeStore-key-pair"
  public_key = var.public_key
}

resource "aws_instance" "home_app" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.primeStore-key-pair.id
  tags = {
    Name  = "${var.instance_name}-${count.index + 1}"
    "Env" = var.env
  }
  vpc_security_group_ids = [var.webServer_sg_id]
  subnet_id              = var.subnet_ids[count.index]
  #user_data              = file(var.userData_path)
}

