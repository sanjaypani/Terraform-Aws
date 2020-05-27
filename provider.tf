#provider is the cloud provider name ex : aws, azurerm, google, openstack

provider "aws" {

}

variable "AWS_REGION" {
	type = string
}

variable "AMIS" {
	type = map(string)
	default = {
		ap-south-1 = "my ami"
	}
}

#resource name = provider name_which resource/service, "any name for the resource" 

resource "aws_instance" "ec2-example" {

	ami = var.AMIS[var.AWS_REGION]
	instance_type = "t2.micro"

}