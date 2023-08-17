# First run

	$env:SEE_MASK_NOZONECHECKS = 1;
	Start-Process PATH\"iScala Client".msi -ArgumentList "/quiet"  -Wait;
	Remove-Item env:SEE_MASK_NOZONECHECKS;


# Checking for registry key (if present it will cause error)

	if ((Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\").PSObject.Properties.Name -contains "PendingFileRenameOperations"){

# Removing registry key 

	Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager" -Name "PendingFileRenameOperations";

# Turning off warning

	$env:SEE_MASK_NOZONECHECKS = 1;

# Installing iScala

	Start-Process PATH\"iScala Client".msi;

# Turning on warning

	Remove-Item env:SEE_MASK_NOZONECHECKS;
	
}

else {

# Turning off warning

	$env:SEE_MASK_NOZONECHECKS = 1;

# Installing iScala (if not present in regedit)

	Start-Process PATH\"iScala Client".msi -ArgumentList "/passive" -Wait;

# Turning on warning

	Remove-Item env:SEE_MASK_NOZONECHECKS;
	powershell -Command "& {[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Pomyślnie zainstalowano iScale!','iScala')}";

}