    $domena = "DOMAIN NAME"; 

    $user = "administrator"; 

    $pass = Read-Host -Prompt "Enter password for $user : " -AsSecureString;

    $credential = New-Object System.Management.Automation.PSCredential($user, $pass);

    Add-Computer -DomainName $domena -Credential $credential;
    
    Restart-Computer;

