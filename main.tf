resource "aws_ssm_parameter" "parameters" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
  overwrite = true
  key_id = "86c02833-5994-4d2e-a07d-2ab4bb6e79a6"
}

variable "params" {
  default = [
    {name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.user_url", value = "http://user-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.sandeepreddymunagala123.xyz:8080/"}

   ]
}


