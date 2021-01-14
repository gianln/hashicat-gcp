module "network" {
  #source  = "app.terraform.io/lien-training/network/google"
  source = "terraform-google-modules/network/google"
  version = "2.5.0"
  # insert required variables here

  network_name = "lien-network"
  project_id = var.project

  subnets = [
  {
    subnet_name   = "lien-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}