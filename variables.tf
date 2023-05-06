variable "image" {
  type        = map(any)
  description = "Image for container"
  default = {
    nodered = {
      dev  = "nodered/node-red:latest"
      prod = "nodered/node-red:latest-minimal"
    }
    influxdb = {
      dev  = "quay.io/influxdb/influxdb:v2.0.2"
      prod = "quay.io/influxdb/influxdb:v2.0.2"
    }
    grafana = {
      dev  = "grafana/grafana:latest-ubuntu"
      prod = "grafana/grafana:main-ubuntu"
    }
  }
}

variable "ext_port" {
  type = map(any)
}

variable "int_port" {
  type        = number
  default     = 1880
  description = "Internal container port"

  validation {
    condition     = var.int_port == 1880
    error_message = "The internal port must be 1880."
  }
}
