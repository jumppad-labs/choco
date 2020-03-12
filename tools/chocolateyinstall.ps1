$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/shipyard-run/shipyard/releases/download/v__version__/shipyard___version___Windows_x86_64.zip' # download url, HTTPS preferred
$checkSum = "__checksum__"

Install-ChocolateyZipPackage -PackageName 'shipyard' -Url $url -UnzipLocation $toolsDir -ChecksumType "sha256" -Checksum $checkSum
Install-BinFile -Name shipyard -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\shipyard"