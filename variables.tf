#this is mandatory, user should apply
variable "ami_id" {
  type = string
  #default = "ami-09c813fb71547fc4f"
}
#this is optional default value is t3.micro. User can always override
#t3.micro,t3.medium,t3.small
variable "instance_type" {
  default = "t3.large"
  type    = string
  validation {
    condition     = contains(["t3.small", "t3.micro", "t3.medium"], var.instance_type)
    error_message = "instance_type can only be any one of t3.micro,t3.medium,t3.small "
  }
}
#this is mandatory, user should apply
variable "sg_id" {
  default = ["sg-0e3005e740f4978bd"]
}