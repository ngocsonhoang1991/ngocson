Write-Host "Dang vo hieu hoa triet de Windows Update..." -ForegroundColor Yellow

# 1. Tat Windows Update Service
Stop-Service -Name "wuauserv" -Force -ErrorAction SilentlyContinue
Set-Service -Name "wuauserv" -StartupType Disabled

# 2. Tat Update Orchestrator Service (Ngan tu dong kich hoat lai)
Stop-Service -Name "UsoSvc" -Force -ErrorAction SilentlyContinue
Set-Service -Name "UsoSvc" -StartupType Disabled

Write-Host "Da vo hieu hoa thanh cong!" -ForegroundColor Green
