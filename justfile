# Set the default recipe to list available recipes
default:
    @just --list

# Initialize Terraform
init:
    terraform init

# Show changes required by the current configuration
plan:
    terraform plan -out=tfplan

# Apply the changes required to reach the desired state
apply:
    terraform apply tfplan

# Destroy all remote objects managed by this Terraform configuration
destroy:
    terraform plan -destroy -out=tfplan
    @echo "Review the destruction plan carefully!"
    @echo "To proceed with destruction, run: just apply"

# Clean up local Terraform files
clean:
    rm -rf .terraform/
    rm -f tfplan
    rm -f .terraform.lock.hcl

# Format Terraform files
fmt:
    terraform fmt -recursive

# Validate Terraform files
validate:
    terraform validate

# Show current workspace
workspace-show:
    terraform workspace show

# Create and switch to a new workspace
workspace-new name:
    terraform workspace new {{name}}

# Switch to an existing workspace
workspace-select name:
    terraform workspace select {{name}}

# List all workspaces
workspace-list:
    terraform workspace list

# Combined recipe to plan and apply in one command (use with caution)
deploy: plan apply

# Combined recipe to initialize, plan and apply in one command (use with caution)
setup: init plan apply

# Combined recipe to destroy and clean up
teardown: destroy apply clean

# Execute Python Boto3 script to get a formated list of S3 buckets
get-buckets: 
  pipenv run python getbuckets.py

