output "vpc_id" {
  value = data.terraform_remote_state.base_infra.outputs.vpc_id
}
output "public_subnet_id" {
  value = data.terraform_remote_state.base_infra.outputs.public_subnet_id
}
output "private_subnet_id" {
  value = data.terraform_remote_state.base_infra.outputs.private_subnet_id
}
output "security_group_id" {
  value = data.terraform_remote_state.base_infra.outputs.security_group_id
}