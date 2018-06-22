$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'http://get.daum.net/PotPlayer/Version/Latest/PotPlayerSetup.exe'
    url64bit       = 'http://get.daum.net/PotPlayer64/Version/Latest/PotPlayerSetup64.exe'   
    checksum       = '25A4AFB88B4E5C1A293EF89BAD9FFA5FF567FC56B82BA3898D3183608C00CF35'
    checksumType   = 'sha256'
    checksum64     = '3A05FF63B4828353103669815D76899FA96076B433F7AD0B4884C96367317AA1'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs