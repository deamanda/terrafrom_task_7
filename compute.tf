resource "aws_instance" "example" {
  ami             = "ami-042d7899818bea126"
  instance_type   = "t3.micro"
  security_groups = [data.terraform_remote_state.base_infra.outputs.security_group_id]
  subnet_id       = data.terraform_remote_state.base_infra.outputs.public_subnet_id

  tags = {
    Terraform = "true"
    Project   = var.project_id
  }
}
