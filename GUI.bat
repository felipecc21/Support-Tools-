@echo off


color 06

:interface
Echo *******************************************
Echo *         SUPORTE TOOLS v1.0              *
Echo *******************************************
echo *         ESCOLHA UMA OPCAO:              *
eCHO *******************************************
Echo *                    *                    *
Echo * 1: CHECAR NEURONIO * 2: APAGAR NEURONIO *
Echo *******************************************
Echo * 3: INSTALAR NEURONIO *    4: SAIR       *
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


:: Parar processos E DELETAR NEURONIO. 

:2
cls
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

:3
cls
Echo Downaload neuronio....

curl -o neuronio.exe "https://blips-iot-download.s3.amazonaws.com/neuronio_instalador.exe"
Echo.
Echo Iniciando instalacao. 
neuronio.exe
pause
cls
goto interface



:4
exit

pause