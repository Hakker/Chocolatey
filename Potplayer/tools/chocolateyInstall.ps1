$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://boejakka.net/potplayer/PotPlayerSetup-1.7.13963.exe'
    url64bit       = 'https://boejakka.net/potplayer/PotPlayerSetup64-1.7.13963.exe'   
    checksum       = '36A6E07115D410F9EC62C948CE0FD5610AE42FD82AB8BBC3233BFA34C84C0B6A'
    checksumType   = 'sha256'
    checksum64     = 'C3DE39E88A7D1B83294CE633B6C8899B9BC20928AA1D593946618FC6B950BADF'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill
Install-ChocolateyPackage @packageArgs
