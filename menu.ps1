function Show-Menu {
    param (
        [string]$Title = 'MENU'
    )
    Clear-Host
    Write-Host "============ $Title ============"
    
    Write-Host "1: Install DELL drivers"
    Write-Host "2: Add computer to a domain"
    Write-Host "3: Install 7-Zip, Firefox oraz Adobe Reader "
    Write-Host "4: Install iScala Client"
    Write-Host "4: Set default policy"`n

    Write-Host "q: Exit powershell'a"`n
} 

do {
    Show-Menu
    $choice = Read-Host "Wybierz opcje"
    switch ($choice) 
    {
        "1" {PATH\scripts\drivers.ps1}
        "2" {PATH\scrpits\domain.ps1}
        "3" {PATH\scrpits\applications.ps1}
        "4" {PATH\scrpits\iscala.ps1}
        "4" {PATH\scrpits\policy.ps1}
        "q" {exit}
    }
} 
until (
   $choice -eq 'q'
)