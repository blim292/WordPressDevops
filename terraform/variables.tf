variable "ami_id" {
  type        = string
  default     = "ami-00399ec92321828f5"
  description = "The ID of the AMI for the region we specified."
}

variable "instance_type" {
  type        = string
  default     = "t3.medium" # note that t3.medium is required to run minikube on ec2 instance as a hypervisor requires more than one CPU, however it does not fall under the free tier.
  description = "Type of instance to start. In this case, we are using the free for now. Determines the size and class of our instance."
}

variable "public_key" {
  type        = string
  default     = "aws-blim292.script"
  description = "Name of the existing keypair to use in AWS"
}

variable "security_preset" {
  type        = string
  default     = "sg-024999aab64fbb043"
  description = "Preset security group with port 80, and ssh open"
}

variable "num_instances" {
  type        = number
  default     = 1
  description = "The number of instances we will create."
}