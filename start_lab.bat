@echo off
set "DRIVE=E:"
set "WORKDIR=\项目\深度学习实验"
set "CONDA_ENV=dl-exp"
set "PORT=8888"

%DRIVE%
cd %WORKDIR%
call conda activate %CONDA_ENV%

for /f "tokens=4 delims=/: " %%P in ('jupyter server list 2^>nul ^| findstr /c:":%PORT%/"') do (
    start "" http://localhost:%PORT%/
    goto end
)

jupyter lab --port %PORT% --ServerApp.port_retries=0
:end
pause
