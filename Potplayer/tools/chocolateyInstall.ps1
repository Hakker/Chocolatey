$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://www.hakkah.net/potplayer/PotPlayerSetup-210428.exe'
    url64bit       = 'https://www.hakkah.net/potplayer/PotPlayerSetup64-210428.exe'   
    checksum       = '4DBADA14FFEE9515ED48D03914FD66507A6CF2D9CBE723954D452A6C3CBDC2FE'
    checksumType   = 'sha256'
    checksum64     = '5A34054E021AE96EED3B4C61B0B95D6EB6448414C3B2A909A24589EFDDCB2B88'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs
