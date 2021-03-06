# (c) https://github.com/coderefinery/autocmake/blob/master/AUTHORS.md
# licensed under BSD-3: https://github.com/coderefinery/autocmake/blob/master/LICENSE

#.rst:
#
# Find and link to ACML.
#
# Variables defined::
#
#   ACML_FOUND
#   ACML_LIBRARIES
#   ACML_INCLUDE_DIR
#
# autocmake.yml configuration::
#
#   docopt: "--acml Find and link to ACML [default: False]."
#   define: "'-DENABLE_ACML={0}'.format(arguments['--acml'])"

option(ENABLE_ACML "Find and link to ACML" OFF)

if(ENABLE_ACML)
    set(BLA_VENDOR "ACML")
    find_package(BLAS REQUIRED)
    unset(BLA_VENDOR)
endif()
