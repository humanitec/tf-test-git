variable "REGION" {
    type = string
}

variable "BUCKET" {
    type = string
}

variable "ACCESS_KEY" {
    type = object({
        ID    = string
        VALUE = string
    })
    sensitive = true
}

output "region" {
  value = var.REGION
}

output "bucket" {
  value = var.BUCKET
}

output "aws_access_key_id" {
  value     = var.ACCESS_KEY.ID
  sensitive = true
}

output "aws_secret_access_key" {
  value     = var.ACCESS_KEY.VALUE
  sensitive = true
}