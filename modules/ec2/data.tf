data "aws_ami" "rhel9" {
  most_recent = true
  name_regex  = "RHEL9_DevOps_Practice"
  owners      = "[973714476881]"
}
