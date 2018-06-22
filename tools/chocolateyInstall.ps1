$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'http://get.daum.net/PotPlayer/Version/Latest/PotPlayerSetup.exe'
    url64bit       = 'http://get.daum.net/PotPlayer64/Version/Latest/PotPlayerSetup64.exe'   
    checksum       = '6E7F7133AFCCF44DF6E3199D9326B14C94A0D3A446D922A9B20337DC7EA712CE'
    checksumType   = 'sha256'
    checksum64     = 'EC919BC5C3900C9D81C5B963A0A5B624F80847F2AE9E15D957BA24867399F9D1'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs