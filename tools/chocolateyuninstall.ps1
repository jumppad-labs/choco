$ErrorActionPreference = 'Stop'; # stop on all errors

Uninstall-BinFile -Name jumppad -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\jumppad"