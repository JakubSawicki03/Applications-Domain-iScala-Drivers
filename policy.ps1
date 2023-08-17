# Setting policies to the default 

Set-ExecutionPolicy Default

powershell -Command "& {[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Policy is changed to restricted!','Policy')}";

