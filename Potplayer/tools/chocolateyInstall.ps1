$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://boejakka.net/potplayer/PotPlayerSetup-1.7.18958.exe'
    url64bit       = 'https://boejakka.net/potplayer/PotPlayerSetup64-1.7.18958.exe'   
    checksum       = '2A3F669776124291A9ABA1B93456F6C4D639FE38E0B14BA47BADCB7342E2812A'
    checksumType   = 'sha256'
    checksum64     = 'CA1C2E29A8823F7CD9FDE2E5CD27A98D029A4855EEE6A382AEE46AFD899295AA'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs