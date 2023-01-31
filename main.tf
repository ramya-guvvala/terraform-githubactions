module "compute" {
  source                 = "./compute"
  env                    = var.env
  instance_count         = var.instance_count
  ami_id                 = var.ami_id
  instance_type          = "t2.micro"
  instance_name          = "Home-App"
  public_key             = var.pub_key

  #======> AutoScaling Group Configuration (Stand-By)<======

  #   max_instance_size      = var.asg_max_instance_size
  #   min_instance_size      = var.asg_min_instance_size
  #   desired_instance_size  = var.asg_desired_instance_size
  #   asg_name               = var.asg_name
  #   launch_template_name   = var.launch_template_name

}