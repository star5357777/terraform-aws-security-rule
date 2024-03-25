resource "aws_security_group_rule" "security_group_rule" {
  security_group_id = var.sg_id
  for_each          = var.sg_rule
  description       = each.value.description

  type      = each.value.type
  to_port   = each.value.to_port
  from_port = each.value.from_port
  protocol  = each.value.protocol


  cidr_blocks              = each.value.sg_cidr != null ? [each.value.sg_cidr] : null
  source_security_group_id = each.value.source_sg_id != null ? each.value.source_sg_id : null
}
