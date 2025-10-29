variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_name" {
    default = [
       # databases
        "mongodb", "redis", "mysql", "rabbitmq",

        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        # bastion
        "bastion"
    ]
}