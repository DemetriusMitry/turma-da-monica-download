@echo off

REM - essa linha pede o identificador do site
set /p id="Identificador: "

REM - essa linha acessa a pasta Pictures do computador
cd %USERPROFILE%\Pictures

REM - essa linha cria numero de 1 a 32 acrescentando 1 e a linha wget e onde ira baixar o arquivo
for /L %%x in (1,1,32) do (

     curl -O "%%x.jpg" "https://builder.dentrodahistoria.com.br/api/builder/getpreview/%id%?page=%%x&w=1000&v=0"
)

pause
