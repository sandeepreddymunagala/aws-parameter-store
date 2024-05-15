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
    {name = "roboshop.dev.frontend.user_url", type = "String", value = "http://user-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.catalogue_url", type = "String", value = "http://catalogue-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.cart_url", type = "String", value = "http://cart-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.shipping_url", type = "String", value = "http://shipping-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.frontend.payment_url", type = "String", value = "http://payment-dev.sandeepreddymunagala123.xyz:8080/"},
    {name = "roboshop.dev.cart.redis_host", type = "String", value = "redis-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.cart.catalogue_host", type = "String", value = "catalogue-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.cart.catalogue_port", type = "String", value = "8080"},
    {name = "roboshop.dev.catalogue.mongo", type = "String", value = "true"},
    {name = "roboshop.dev.catalogue.mongo_url", type = "String", value = "mongodb://mongodb-dev.sandeepreddymunagala123.xyz:27017/catalogue"},
    {name = "roboshop.dev.payment.cart_host", type = "String", value = "cart-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.payment.cart_port", type = "String", value = "8080"},
    {name = "roboshop.dev.payment.user_host", type = "String", value = "user-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.payment.user_port", type = "String", value = "8080"},
    {name = "roboshop.dev.payment.amqp_host", type = "String", value = "rabbitmq-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.payment.amqp_user", type = "String", value = "roboshop"},
    {name = "roboshop.dev.dispatch.amqp_host", type = "String", value = "rabbitmq-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.dispatch.amqp_user", type = "String", value = "roboshop"},
    {name = "roboshop.dev.shipping.cart_endpoint", type = "String", value = "cart-dev.sandeepreddymunagala123.xyz:8080"},
    {name = "roboshop.dev.shipping.db_host", type = "String", value = "mysql-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.user.mongo", type = "String", value = "true"},
    {name = "roboshop.dev.user.redis_host", type = "String", value = "redis-dev.sandeepreddymunagala123.xyz"},
    {name = "roboshop.dev.user.mongo_url", type = "String", value = "mongodb://mongodb-dev.sandeepreddymunagala123.xyz:27017/users"},
    ### passwords will be never part of git repos
    {name = "roboshop.dev.payment.amqp_pass", type = "SecureString", value = "roboshop123"},
    {name = "roboshop.dev.dispatch.amqp_pass", type = "SecureString", value = "roboshop123"},
    {name = "roboshop.dev.rabbitmq.amqp_user", type = "String", value = "roboshop"},
    {name = "roboshop.dev.rabbitmq.amqp_pass", type = "SecureString", value = "roboshop123"},
    {name = "roboshop.dev.mysql.username", type = "String", value = "roboshop"},
    {name = "roboshop.dev.mysql.password", type = "SecureString", value = "roboshop123"}
  ]
}


