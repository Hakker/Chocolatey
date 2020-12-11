$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'http://www.hakkah.net/potplayer/PotPlayerSetup-201209.exe'
    url64bit       = 'http://www.hakkah.net/potplayer/PotPlayerSetup64-201209.exe'   
    checksum       = '02BD8BAD644D9C993E5753A0FE6F7C4D7CA61227736404DAD682B020FAAACA03'
    checksumType   = 'sha256'
    checksum64     = '71EF60D45B096999C066DB19452CF31B0CD5A94BA5271F909221E0AC1D1F4178'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs