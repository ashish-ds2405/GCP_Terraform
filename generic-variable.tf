variable "business_unit" {
    description = "Business unit owning the project"
    type = string
    default = "prepaid"
}

variable "environemt" {
  description = "The environment belonging to the projecg"
  type = string
  default = "dev"
}

variable "web_subnet_CIDR" {
  description = "CIDR range of the web subnet"
  type = string
  default = "10.0.0.0/24"
}

variable "app_subnet_CIDR" {
  description = "CIDR range of the app subnet"
  type = string
  default = "10.0.1.0/24"
}

variable "db_subnet_CIDR" {
  description = "CIDR range of the db subnet"
  type = list(string)
  default = [ "10.0.2.0/24" ]
}

variable "region-resource" {
  description = "Region of resource"
  type = string
  default = "us-west2"
}

variable "tags" {
  description = "tags of resource"
  type = list(string)
  default = [ "web" ]
}

variable "machine_type" {
  description = "machine type of resource"
  type = string
  default = "e2-medium"
}


variable "image" {
  description = "OS Image of resource"
  type = string
  default = "debian-cloud/debian-9"
}

variable "zone" {
  description = "Region of resource"
  type = string
  default = "us-west2-a"
}

variable "allowed_protocols" {
  description = "allowed protocols"
  type = list(string)
  default = [ "icmp", "ssh", "rdp" ]
}

# Linux VM Input Variables Placeholder file.
variable "app_inbound_ports" {
  description = "app Inbound Ports"
  type = list(string)
  default = ["80", "8080", "443"]
}





