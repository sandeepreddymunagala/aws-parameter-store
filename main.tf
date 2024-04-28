resource "aws_ssm_parameter" "parameters" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    {name = "roboshop.dev.frontend.user_url", type = "String",value = "http://user-dev.sandeepreddymunagala123.xyz/"},
    {name = "roboshop.dev.frontend.catalogue_url", type = "String",value = "http://catalogue-dev.sandeepreddymunagala123.xyz/"},
    {name = "roboshop.dev.frontend.cart_url", type = "String",value = "http://cart-dev.sandeepreddymunagala123.xyz/"},
    {name = "roboshop.dev.frontend.shipping_url", type = "String",value = "http://shipping-dev.sandeepreddymunagala123.xyz/"},
    {name = "roboshop.dev.frontend.payment_url", type = "String",value = "http://payment-dev.sandeepreddymunagala123.xyz/"}
  ]
}