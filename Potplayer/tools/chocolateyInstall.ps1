$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://boejakka.net/potplayer/PotPlayerSetup-1.7.17508.exe'
    url64bit       = 'https://boejakka.net/potplayer/PotPlayerSetup64-1.7.17508.exe'   
    checksum       = '733AF118D7982B5F7471DFE3440947C1B668238A27D0AC89E3F4090684A0E1E8'
    checksumType   = 'sha256'
    checksum64     = '521672085381E1AB5D2D58D56E0AEE38D99CCB15CAFCEF0223049E2D3522D352'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs