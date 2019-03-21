# Create an EC2 instance with Terraform

Terraform provider: AWS

The EC2 instance:
- has an elastic IP
- has security groups that accept SSH and HTTP inbound traffic and allow all outbound connections
- is provisionned by installing NGINX via SSH

The server's endpoint is showed in the console after terraform apply.

Secret variables to register in a `variables.tf` file, needed to connect to the AWS API:
- `aws_access_key`
- `aws_secret_key`
- `aws_region`

Further, generating an SSH key pair and copying the public key in this project is necessary to connect to the instance via SSH. See the `key_pair.tf` file for the naming of the public key. 
