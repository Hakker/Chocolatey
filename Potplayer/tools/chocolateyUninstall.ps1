$packageName = 'potplayer';
$installerType = 'exe';
$silentArgs = '/S';

try {
	$hklm = "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\PotPlayer";
	if (Get-ProcessorBits 64) {
	    $hklm = "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\PotPlayer64";
	}
	$file = (Get-ItemProperty -Path $hklm).UninstallString;
	Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -silentArgs $silentArgs -File $file;
} catch {
	Write-Warning $packageName "$($_.Exception.Message)";
	throw;
}