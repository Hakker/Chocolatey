$ErrorActionPreference = 'Stop';

$packageName = 'potplayer'
 
$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'       
    url            = 'https://boejakka.net/potplayer/PotPlayerSetup-1.7.18344.exe'
    url64bit       = 'https://boejakka.net/potplayer/PotPlayerSetup64-1.7.18344.exe'   
    checksum       = '4E1FC9B9DAA99497D76E55482D72FD321BBFA5524C41FE912FF2C1BFBC1CF8A8'
    checksumType   = 'sha256'
    checksum64     = '0DDEAD8B704FD8FFAD2CBB7FB83688C7945151DC28F8EC72650A59C55121E042'
    checksumType64 = 'sha256'    
    silentArgs     = '/S'
	validExitCodes = @(0);
}

echo "If an older version of PotPlayer is running on this machine, it will be closed prior to the installation of the newer version."
ps potplayer -ea 0| kill

Install-ChocolateyPackage @packageArgs