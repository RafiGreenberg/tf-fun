terraform {
  source = "../modules/instance"
}
inputs = {
  instance_type = "e2-micro"
  instance_name = "example"
  env = "dev"
}
