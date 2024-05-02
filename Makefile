default:
	@rm -rf .terraform
	@terraform init
	@terraform apply -auto-approve -var-file=env-dev/main.tfvars