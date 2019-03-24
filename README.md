# Create EC2 instances provisionned with NGINX using Terraform

Terraform provider: AWS

Using the nginx-server Terraform module living in this project, you can create two EC2 instances with NGINX installation by running the commands `terraform init` then `terraform apply`.

Each EC2 instance:
- has an elastic IP
- has security groups that accept SSH and HTTP inbound traffic and allow all outbound connections
- is provisionned by installing NGINX via SSH

Each server's endpoint is showed in the console after `terraform apply` completes.

The following secret variables must be registered in a `variables.tf` file:
- `aws_access_key` -> required for AWS API
- `aws_secret_key` -> required for AWS API
- `aws_region` -> required for AWS API
- `public_key` -> required for allowing SSH connection to servers
- `private_key` -> required for allowing SSH connection to servers

See the `variables.tf.example` too see an example of how to register these variables.
