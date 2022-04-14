variable "capitol" {
  description = "Please specify a capital."
  default     = "Amsterdam"
}

locals {
  _capitol_country_mapping = {
    others    = "Belgium"
    amsterdam = "The Netherlands"
    brussels  = "Belgium"
    paris     = "France"
    italy     = "Milan"
  }
  country = try(local._capitol_country_mapping[lower(var.capitol)],
                local._capitol_country_mapping["others"])
}

output "country" {
  value       = local.country
  description = "The country that belongs to a capitol."
}
