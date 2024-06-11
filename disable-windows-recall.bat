@echo off
reg query "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\WindowsAI" >nul 2>&1
if %ERRORLEVEL% neq 0 (
    reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\WindowsAI" >nul
)

reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\WindowsAI" /v DisableAIDataAnalysis /t REG_DWORD /d 1 /f

shutdown /r /t 0



# ⚠️Attention: Your PC will restart afterwards
# ⚠️Attention: Do it only at your own risk
