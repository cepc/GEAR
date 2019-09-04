include(CMakePackageConfigHelpers)
configure_file(cmake/GEARConfig.cmake.in "${PROJECT_BINARY_DIR}/GEARConfig.cmake" @ONLY)

write_basic_package_version_file(${CMAKE_CURRENT_BINARY_DIR}/GEARConfigVersion.cmake
                                 VERSION ${GEAR_VERSION}
                                 COMPATIBILITY SameMajorVersion )

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/GEARConfig.cmake
              ${CMAKE_CURRENT_BINARY_DIR}/GEARConfigVersion.cmake
        DESTINATION ${CMAKE_INSTALL_PREFIX} )
