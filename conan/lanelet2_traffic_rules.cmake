cmake_minimum_required(VERSION 2.8.12)
project(lanelet2_traffic_rules)

set(lanelet2_traffic_rules_lib_name ${PROJECT_NAME})

############################
## read source code files ##
############################
file(GLOB_RECURSE lanelet2_traffic_rules_source_list "${CMAKE_CURRENT_LIST_DIR}/../lanelet2_traffic_rules/src/*.cpp")

###########
## Build ##
###########
add_library(
    ${lanelet2_traffic_rules_lib_name}
        ${lanelet2_traffic_rules_source_list})
target_include_directories(
    ${lanelet2_traffic_rules_lib_name}
    PUBLIC
        "${CMAKE_CURRENT_LIST_DIR}/../lanelet2_traffic_rules/include"
        "${CMAKE_CURRENT_LIST_DIR}/../lanelet2_traffic_rules/include/${lanelet2_traffic_rules_lib_name}")
target_link_libraries(
    ${lanelet2_traffic_rules_lib_name}
    PUBLIC
        ${lanelet2_core_lib_name})