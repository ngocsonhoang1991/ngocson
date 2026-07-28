Stop Service Update Window Server 

Stop-Service wuauserv -Force
Set-Service wuauserv -StartupType Disabled

Stop-Service UsoSvc -Force -ErrorAction SilentlyContinue
Set-Service UsoSvc -StartupType Disabled
