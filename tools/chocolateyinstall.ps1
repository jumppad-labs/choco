$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/jumppad-labs/jumppad/releases/download/v__version__/jumppad___version___Windows_x86_64.zip' # download url, HTTPS preferred
$checkSum = "__checksum__"

Install-ChocolateyZipPackage -PackageName 'jumppad' -Url $url -UnzipLocation $toolsDir -ChecksumType "sha256" -Checksum $checkSum
Install-BinFile -Name jumppad -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\jumppad"