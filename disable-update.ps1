Write-Host "Dang tien hanh tat service Windows Update..." -ForegroundColor Yellow

# Dung service Windows Update
Stop-Service -Name "wuauserv" -Force -ErrorAction SilentlyContinue

# Doi Startup type sang Disabled de khong tu khoi dong lai
Set-Service -Name "wuauserv" -StartupType Disabled

# Clear cac task tu dong bat lai update trong Task Scheduler (neu co)
Get-ScheduledTask -TaskPath "\Microsoft\Windows\WindowsUpdate\*" | Disable-ScheduledTask -ErrorAction SilentlyContinue

Write-Host "Da tat Windows Update thanh cong!" -ForegroundColor Green
