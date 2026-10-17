@echo off
chcp 65001 > nul
echo Сборка модуля Graphics...

if not exist dist mkdir dist
type nul > dist\graphics.lua

type src\sky.lua >> dist\graphics.lua
echo. >> dist\graphics.lua
type src\effects.lua >> dist\graphics.lua
echo. >> dist\graphics.lua
type src\init.lua >> dist\graphics.lua

echo УСПЕХ! Файл dist\graphics.lua собран.
pause