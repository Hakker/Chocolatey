$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://www.videohelp.com/download/PotPlayerSetup-1.7.12845.exe'
    url64bit       = 'https://www.videohelp.com/download/PotPlayerSetup64-1.7.12845.exe'   
    checksum       = 'D8AE075CFD7A7B5EA9ECD47A20E8CED4EDC9117BDF368965956AF4B62BA0C2E1'
    checksumType   = 'sha256'
    checksum64     = 'DA446C87434DA20DB5911654CFAE14F9BDC463800014FB90C63662F56D613237'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill
Install-ChocolateyPackage @packageArgs
