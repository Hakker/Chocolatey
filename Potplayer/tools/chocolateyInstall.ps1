$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://boejakka.net/potplayer/PotPlayerSetup-1.7.14804.exe'
    url64bit       = 'https://boejakka.net/potplayer/PotPlayerSetup64-1.7.14804.exe'   
    checksum       = '123694D838F0F5816928034E6AE73DAFEA9404D607583200026E43DA468CD1CA'
    checksumType   = 'sha256'
    checksum64     = '6D3991147CC8A5AAC7FE975B15A014F5AF8B0AC794185D65D390B1DBF12A9091'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs