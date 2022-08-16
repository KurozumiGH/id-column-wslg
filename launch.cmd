@echo off
setlocal

for /f "usebackq" %%X in (`wsl docker compose ps -q`) do set DCPS=%%X
if ""%DCPS%%""=="""" (goto __LAUNCH__) else (goto __SHUTDOWN__)

:__LAUNCH__
wsl docker compose build
wsl docker compose up

:__SHUTDOWN__
wsl docker compose down
goto __END__

:__END__
