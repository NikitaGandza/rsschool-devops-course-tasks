resource "aws_key_pair" "terraform-lab" {
  key_name   = "terraform-lab_key_pair"
  public_key = var.public_ssh_key
}