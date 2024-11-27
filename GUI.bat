@echo off


color 06

:interface
Echo *******************************************
Echo *         SUPORTE TOOLS v1.0              *
Echo *******************************************
echo *         ESCOLHA UMA OPCAO:              *
eCHO *******************************************
Echo *                    *                    *
Echo * 1: CHECAR NEURONIO * 2: PARAR PROCESSOS *
Echo *******************************************
Echo * 3: APAGAR NEURONIO *    4: SAIR         *
Echo *******************************************
Echo. 


choice /c "1234" /n /m "Digite> "
goto %errorlevel%

:: Checkar Neuronio

:1
cls
::cd/blips
::neuronio -testar
calc
echo CALCULADORA ABERTA
pause
cls
goto interface


:: Parar processos. 

:2
cls
taskkill /IM CalculatorApp.exe /F

::taskkill /IM notificacao.exe /F

::taskkill /IM servico.exe /F

echo: FINALIZANDO NEURONIO
pause
cls


goto interface


:: Apagar neuronio

:3
cls
cd/
rmdir blips /S


echo: VOCE VAI APAGAR O NEURONIO
pause
cls
goto interface

:4
exit

pause