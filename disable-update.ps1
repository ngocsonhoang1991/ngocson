Write-Host "Dang vo hieu hoa triet de Windows Update..." -ForegroundColor Yellow

# 1. Tat Windows Update Service
Stop-Service -Name "wuauserv" -Force -ErrorAction SilentlyContinue
Set-Service -Name "wuauserv" -StartupType Disabled

# 2. Tat Update Orchestrator Service
Stop-Service -Name "UsoSvc" -Force -ErrorAction SilentlyContinue
Set-Service -Name "UsoSvc" -StartupType Disabled

# 3. Tat Windows Update Medic Service (Bac si tu dong bat lai Update)
Stop-Service -Name "waasmedicsvc" -Force -ErrorAction SilentlyContinue
Set-Service -Name "waasmedicsvc" -StartupType Disabled

Write-Host "Da vo hieu hoa thanh cong tat ca cac dich vu Windows Update!" -ForegroundColor Green
