$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://www.hakkah.net/potplayer/PotPlayerSetup-210318.exe'
    url64bit       = 'https://www.hakkah.net/potplayer/PotPlayerSetup64-210318.exe'   
    checksum       = '0253919ABA24693C3030120FB4185F977017A3EE0FF26C5C2F886F82D38C7AA0'
    checksumType   = 'sha256'
    checksum64     = 'EBD5A13831C60DD8115D932414D5A1226334EFEE766163B9D825DC00D9012CC6'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs
