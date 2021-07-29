$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://www.hakkah.net/potplayer/PotPlayerSetup-210729.exe'
    url64bit       = 'https://www.hakkah.net/potplayer/PotPlayerSetup64-210729.exe'   
    checksum       = '069640168ED3C5E5A1D54B52CEDDE0C98FC7018259CF931B7E56B4C423CCBD7B'
    checksumType   = 'sha256'
    checksum64     = 'FA6E893320CF4A786B2D2EA499231A1E5572B819EA41046D5EE0825C098C3AB5'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs
