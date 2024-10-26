resource "aws_ssm_parameter" "parameters" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    {name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.sandeepreddymunagala123.xyz:8080/",type ="String"},
    {name = "roboshop.dev.frontend.user_url", value = "http://user-dev.sandeepreddymunagala123.xyz:8080/",type ="String"},
    {name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.sandeepreddymunagala123.xyz:8080/",type ="String"},
    {name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.sandeepreddymunagala123.xyz:8080/",type ="String"},
    {name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.sandeepreddymunagala123.xyz:8080/",type ="String"}

   ]
}


