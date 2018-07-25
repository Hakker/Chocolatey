$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://www.videohelp.com/download/PotPlayerSetup-1.7.13621.exe'
    url64bit       = 'https://www.videohelp.com/download/PotPlayerSetup64-1.7.13621.exe'   
    checksum       = 'D234D8C031123A51A1FC78C5CD57DD68ED8BC57B4FE8C1347071EA0E91BB01FB'
    checksumType   = 'sha256'
    checksum64     = 'C48463E8D48ADA1DC0BCB1B468B16FA24D26DBAC65035C94CB69C6587A3817C6'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill
Install-ChocolateyPackage @packageArgs
