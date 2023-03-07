variable "instances"{
  default     =  {
    catalogue =  {
      Name    = "catalogue"
      type    = "t3.micro"
    }
    frontend  =   {
      Name    = "frontend"
      type    = "t3.micro"
    }
    user =  {
      Name    = "user"
      type    = "t3.micro"
    }
    mysql  =   {
      Name    = "mysql"
      type    = "t3.micro"
      password = "RoboShop@1"
    }
    mongodb =  {
      Name    = "mongodb"
      type    = "t3.micro"

    }
    redis  =   {
      Name    = "redis"
      type    = "t3.micro"
    }
    cart =  {
      Name    = "cart"
      type    = "t3.micro"
    }
    shipping  =   {
      Name    = "shipping"
      type    = "t3.micro"
      password = "RoboShop@1"
    }
    payment =  {
      Name    = "payment"
      type    = "t3.micro"
      password = "roboshop123"
    }
    rabbitmq  =   {
      Name    = "rabbitmq"
      type    = "t3.micro"
      password = "roboshop123"
    }
  }
}