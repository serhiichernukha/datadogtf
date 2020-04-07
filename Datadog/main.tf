module "monitoring" {
  source      = "/home/serhiichernukha/modules/monitoring"
  monitor     = local.monitor
  common      = local.common
}
