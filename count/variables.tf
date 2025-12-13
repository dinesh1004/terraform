variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z05339043BT9MD1FV3PVX"
}

variable "domain_name"{
    
    default = "suneel.shop"
}