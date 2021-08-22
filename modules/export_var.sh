#!/usr/bin/env bash
# """Export arbitrary variables
#
# DESCRIPTION:
#   Simply export list of arbitrary variables defined in module sections.
#
#   Parameters in `.envrc.ini` are:
#
#   <center>
#
# | Name        | Description                              |
# | :---------- | :----------------------------            |
# | `VAR_NAME`  | Name and value of the variable to export |
#
#   </center>
#
#   ## Parameters
#
#   ### `VAR_NAME`
#
#   Name and value of the variable to export.
#
#   ## `.envrc.ini` example
#
#   Corresponding entry in `.envrc.ini.template` are:
#
#   ```ini
#   # export module
#   # ------------------------------------------------------------------------------
#   # Export arbitrary variables
#   [export_var]
#   # Specify variable name and value to export
#   VAR_NAME="value"
#   ```
#
# """

export_var()
{
  # """Export export_var variable
  #
  # Export variables
  #
  # Arguments:
  #   None
  #
  # Output:
  #   Log information
  #
  # Returns:
  #   1 if required variables are not set or if database can not be unlocked
  #   0 if everything is right and database can be unlocked
  #
  # """

  # shellcheck disable=SC2154
  #   - SC2514: export_var is referenced but not assigned
  for i_key in "${!export_var[@]}"
  do
    cmd = "export ${i_key}=\"${export_var[ikey]}\""
    ${cmd}
  done
}


deactivate_export_var()
{
  # """Unset exported variables for export_var module
  #
  # Unset `export_var_*` variable previously exported.
  #
  # Globals:
  #   export_var_DB
  #   export_var_KEYFILE
  #   export_var_NAME
  #
  # Arguments:
  #   None
  #
  # Output:
  #   None
  #
  # Returns:
  #   None
  #
  # """
  for i_key in "${!export_var[@]}"
  do
    cmd = "unset ${i_key}"
    ${cmd}
  done
}

# ------------------------------------------------------------------------------
# VIM MODELINE
# vim: ft=bash: foldmethod=indent
# ------------------------------------------------------------------------------
