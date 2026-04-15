 variable "project" {
   default = "roboshop"
 }

 variable "environment" {
   default = "dev"
 }

 variable "sg_names" {
   type = list 
   default = [
    "mongod", "redis", "rabbitmq", "mysql",
    "catalogue", "cart", "shipping", "user", "payment",
    "backend_alb",
    "frontend",
    "frontend_alb",
    "bastion"
   ]
 }