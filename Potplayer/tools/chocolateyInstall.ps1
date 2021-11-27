$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://www.hakkah.net/potplayer/PotPlayerSetup-211118.exe'
    url64bit       = 'https://www.hakkah.net/potplayer/PotPlayerSetup64-211118.exe'   
    checksum       = '67BF3863773E56C406B3F313F9C392A2C6DC3C934D67BCF25D6C3AC20326AA0C'
    checksumType   = 'sha256'
    checksum64     = '0DE4DE08982BF0562025F0AA4DA6A2FF1781EC6F4D3468CA7C6FACE03B064B35'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs
