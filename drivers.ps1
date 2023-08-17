start-process "PATH\Intel-UHD-Iris-Xe-Graphics-Driver.EXE" /s -Wait;
start-process "PATH\Cirrus-Logic-High-Definition-Audio-Driver.EXE" /s -Wait;
start-process "PATH\Intel-Innovation-Platform-Framework-Driver.EXE" /s -Wait;
start-process "PATH\Intel-Management-Engine-Components-Installer.EXE" /s -Wait;
start-process "PATH\Kioxia-Solid-State-Drive-Firmware-Update.EXE" /s -Wait;
start-process "PATH\Realtek-PCIe-Ethernet-Controller-Driver.EXE" /s -Wait;
start-process "PATH\KDI-OM3PGP4-PCIe-NVMe-Solid-State-Drive-Firmware.EXE" /s -Wait;
start-process "PATH\Kioxia-Solid-State-Drive-Firmware-Update2.EXE" /s -Wait;
start-process "PATH\Intel-Chipset-Device-Software.EXE" /s -Wait;
start-process "PATH\Intel-Management-Engine-Components-Installer2.EXE" /s -Wait;
start-process "PATH\Vostro_3910_3710.exe" -Wait;

powershell -Command "& {[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Installation is completed!','Drivers')}";
