module "component" {
    for_each = var.components
    source = "git::https://github.com/naren83-s/terraform-roboshop-component.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}