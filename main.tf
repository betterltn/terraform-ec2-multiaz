resource "aws_instance" "web_server" {
  count         = 3
  ami           = "${data.aws_ami.ubuntu.image_id}"
  instance_type = "t3.micro"
  subnet_id     = element(tolist(data.aws_subnet_ids.current.ids), count.index)
}
output "instance_subnets" {
  value = ["${aws_instance.web_server.*.subnet_id}"]
}
