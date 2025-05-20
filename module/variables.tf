# --- Cluster Settings ---
variable "cluster-name" {}
variable "env" {}
variable "cidr-block" {}
variable "vpc-name" {}
variable "igw-name" {}
variable "pub-subnet-count" {}
variable "pub-cidr-block" {
  type = list(string)
}
variable "pub-availability-zone" {
  type = list(string)
}
variable "pub-sub-name" {}
variable "pri-subnet-count" {}
variable "pri-cidr-block" {
  type = list(string)
}
variable "pri-availability-zone" {
  type = list(string)
}
variable "pri-sub-name" {}
variable "public-rt-name" {}
variable "private-rt-name" {}
variable "eip-name" {}
variable "ngw-name" {}
variable "eks-sg" {}

# --- IAM Role Related Settings ---
variable "is_eks_role_enabled" {
  type = bool
}
variable "is_eks_nodegroup_role_enabled" {
  type = bool
}

# --- EKS Specific Settings ---
variable "is_eks_cluster_enabled" {
  type = bool
}
variable "cluster_version" {}
variable "endpoint_private_access" {}
variable "endpoint_public_access" {}

variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}

# --- Node Group Settings ---
variable "ondemand_instance_types" {
  type = list(string)
}
variable "desired_capacity_on_demand" {}
variable "min_capacity_on_demand" {}
variable "max_capacity_on_demand" {}

variable "spot_instance_types" {
  type = list(string)
}
variable "desired_capacity_spot" {}
variable "min_capacity_spot" {}
variable "max_capacity_spot" {}

