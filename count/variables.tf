variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z0525756Y7HMXRRYAT2T"
}

variable "domain_name" {
    default = "practicedev.shop"
}