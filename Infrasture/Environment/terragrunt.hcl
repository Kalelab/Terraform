terraform {
  source = "path_to_your_modules_directory"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  common_variable1 = "value1"
  common_variable2 = "value2"
}
