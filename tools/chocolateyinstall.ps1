$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/shipyard-run/shipyard/releases/download/v__version__/shipyard-windows-amd64.zip' # download url, HTTPS preferred
$checkSum = "__checksum__"

Install-ChocolateyZipPackage -PackageName 'shipyard' -Url $url -UnzipLocation $toolsDir -ChecksumType "sha256" -Checksum $checkSum
Install-BinFile -Name shipyard -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\shipyard"