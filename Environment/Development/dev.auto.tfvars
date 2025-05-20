# General Environment Settings
env                   = "dev"
aws-region            = "us-east-1"

# VPC Networking Settings
vpc-cidr-block        = "10.16.0.0/16"
vpc-name              = "vpc"
igw-name              = "igw"
pub-subnet-count      = 3
pub-cidr-block        = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub-availability-zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
pub-sub-name          = "subnet-public"
pri-subnet-count      = 3
pri-cidr-block        = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri-availability-zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
pri-sub-name          = "subnet-private"
public-rt-name        = "public-route-table"
private-rt-name       = "private-route-table"
eip-name              = "elasticip-ngw"
ngw-name              = "ngw"
eks-sg                = "openreplay-eks-sg"

# EKS Cluster Settings
is_eks_cluster_enabled  = true
cluster_version         = "1.31"
cluster-name            = "eks-cluster"
endpoint_private_access = false
endpoint_public_access  = true

# OnDemand Node Group Settings (Disabled by setting 0 capacity)
ondemand_instance_types    = ["t2.medium"]
desired_capacity_on_demand = 0
min_capacity_on_demand     = 0
max_capacity_on_demand     = 1

# Spot Node Group Settings (Enabled)
spot_instance_types        = ["t3.medium"]
desired_capacity_spot      = 0
min_capacity_spot          = 0
max_capacity_spot          = 1

# EKS Addons
addons = [
  {
    name    = "vpc-cni"
    version = "v1.19.0-eksbuild.1"
  },
  {
    name    = "coredns"
    version = "v1.11.4-eksbuild.10"
  },
  {
    name    = "kube-proxy"
    version = "v1.31.2-eksbuild.3"
  },
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.43.0-eksbuild.1"
  }
]
