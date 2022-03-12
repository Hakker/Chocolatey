$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://www.hakkah.net/potplayer/PotPlayerSetup-220302.exe'
    url64bit       = 'https://www.hakkah.net/potplayer/PotPlayerSetup64-220302.exe'   
    checksum       = '717F6CF30277089A9BCCD81D6590F60B26B23F93BA55CC6ED9F0F4674E1BCB9D'
    checksumType   = 'sha256'
    checksum64     = '6D37952864566531F073AE3FF6CC50AE93B413D627F1D9D2B0C101137F670534'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs
