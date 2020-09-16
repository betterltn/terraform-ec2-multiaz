# terraform-ec2-multiaz
Example Terraform code  to spinup aws ec2 across multiple availabilityZones

# How to deploy?

export TF_VAR_vpc_id="YOUR_VPC_ID"
terraform init
terraform plan
terraform apply

