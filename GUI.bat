@echo off


color 06

:interface
Echo *******************************************
Echo *         SUPORTE TOOLS v2.0              *
Echo *******************************************
echo *         ESCOLHA UMA OPCAO:              *
eCHO *******************************************
Echo *                    *                    *
Echo * 1: CHECAR NEURONIO * 2: APAGAR NEURONIO *
Echo *******************************************
Echo * 3: ----------------- *    4: SAIR       *
Echo *******************************************
Echo. 


choice /c "1234" /n /m "Digite> "
goto %errorlevel%

:: Checkar Neuronio

:1
cls
echo Checando status do neuronio. 
cd/blips
neuronio -testar >> neustatus.txt
pause
cls
goto interface


:: Parar processos/apagar neuronio/parar win defender. 

:2
cls
echo Desativando o Windows Defender...

:: Desativa a proteção em tempo real do Windows Defender
PowerShell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

echo Windows Defender foi desativado.

echo: FINALIZANDO NEURONIO
taskkill /IM notificacao.exe /F
taskkill /IM servico.exe /F
Echo DELETANDO NEURONIO
cd/
rmdir blips /S
pause
cls
goto interface

:: Instalar neuronio

::3
cls
Echo Downaload neuronio....

curl -o neuronio.exe "https://blips-iot-download.s3.amazonaws.com/neuronio_instalador.exe"
Echo.
Echo Iniciando instalacao. 
start /B neuronio.exe
pause
cls
goto interface


:3
:4
exit

pause