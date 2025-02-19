variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    Name = "tmt-poc"
  }
}
