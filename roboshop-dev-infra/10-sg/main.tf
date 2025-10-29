module "sg" {
  count = length(var.sg_name)
  source = "git::https://github.com/Praveen1221-TF/terraform-aws-sg.git"
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_name[count.index]
  sg_description = "Created for ${var.sg_name[count.index]}"
  vpc_id =  local.vpc_id
}