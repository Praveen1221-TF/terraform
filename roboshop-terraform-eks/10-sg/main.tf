module "sg" {
  count = length(var.sg_name)
  source = "git::https://github.com/Praveen1221-TF/terraform-aws-sg.git"
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_name[count.index]
  sg_description = "Created for ${var.sg_name[count.index]}"
  vpc_id =  local.vpc_id
}


#frontend accepting traffice from forntend ALB
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#  type              = "ingress"
#  security_group_id = module.sg[9].sg_id # frontend SG ID
#   source_security_group_id = module.sg[11].sg_id # frontend ALB SG ID
#   from_port         = 80
#   protocol          = "tcp"
#   to_port           = 80
#  }