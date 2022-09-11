variable "app-tier" {
  type = map
  default = {
             "App-Server": "t2.small",
             "Web-Server": "t2.medium",
             "Database-Server": "t2.large"}
}
