$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'http://t1.daumcdn.net/potplayer/PotPlayer/Version/20180629_1.7.12845/PotPlayerSetup.exe'
    url64bit       = 'http://t1.daumcdn.net/potplayer/PotPlayer/Version/20180629_1.7.12845/PotPlayerSetup64.exe'   
    checksum       = 'FDA74C68CE34645A442DE408F6D73A92C9254CB8E2453E26EC4876A7C725AEC3'
    checksumType   = 'sha256'
    checksum64     = '2416554BBDBEF45B977FE05D6D25F4E7B5A39D50B50A635D2051C70ADCDE0291'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill
Install-ChocolateyPackage @packageArgs
