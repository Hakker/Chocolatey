$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'http://get.daum.net/PotPlayer/Version/Latest/PotPlayerSetup.exe'
    url64bit       = 'http://get.daum.net/PotPlayer64/Version/Latest/PotPlayerSetup64.exe'   
    checksum       = '730876011A9DF49447C5FC37A5644BCE9711F3CBFE45786D3C338766F9D47DD3'
    checksumType   = 'sha256'
    checksum64     = '1A80AE3E4006B5F6AFE95C112CA9D531F87012E2F6E27B2408BB62FF3E825D85'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs