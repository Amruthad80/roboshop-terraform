resource "aws_eks_access_entry" "create-access-entry" {
  cluster_name      = var.cluster_name
  principal_arn     = var.principal_arn
  kubernetes_groups = var.kubernetes_groups
  type              = "STANDARD"

}

resource "aws_eks_access_policy_association" "attach-policy" {
  depends_on = [aws_eks_access_entry.create-access-entry]
  cluster_name      = var.cluster_name
  principal_arn     = var.principal_arn
  policy_arn    = var.policy_arn

  access_scope {
    type = "cluster"
  }

}
