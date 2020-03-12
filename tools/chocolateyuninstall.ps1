$ErrorActionPreference = 'Stop'; # stop on all errors

Uninstall-BinFile -Name shipyard -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\shipyard"