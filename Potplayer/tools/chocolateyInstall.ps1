$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://boejakka.net/potplayer/PotPlayerSetup-1.7.16291.exe'
    url64bit       = 'https://boejakka.net/potplayer/PotPlayerSetup64-1.7.16291.exe'   
    checksum       = 'E82C9528553FE9825F94881B69FB4C819C617B873B225339828C6905C855F72A'
    checksumType   = 'sha256'
    checksum64     = 'C6EAA84275C2613A822CFFEF345DD0C650BD02769F5D13858E79A62205207D8C'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs