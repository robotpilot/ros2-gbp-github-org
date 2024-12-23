locals {
  robotis_team = [
    "ROBOTIS-Will",
    "robotpilot",
  ]
  robotis_repositories = [
    "dynamixel_hardware_interface-release",
    "dynamixel_interfaces-release",
    "dynamixel_sdk-release",
    "dynamixel_workbench-release",
    "dynamixel_workbench_msgs-release",
    "hls_lfcd_lds_driver-release",
    "ld08_driver-release",
    "turtlebot3_manipulation-release",
    "turtlebot3_msgs-release",
    "turtlebot3_simulations-release",
  ]
}

module "robotis_team" {
  source       = "./modules/release_team"
  team_name    = "robotis"
  members      = local.robotis_team
  repositories = local.robotis_repositories
  depends_on   = [github_membership.members, github_repository.repositories]
}
