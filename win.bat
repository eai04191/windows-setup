@echo off


:: Install Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"


:: Reload PATH
%ALLUSERSPROFILE%\chocolatey\bin\RefreshEnv.cmd


:: Install Apprications with Chocolatey

choco install -y ^
:: Drivers ^
  directx ^
  geforce-game-ready-driver ^
  geforce-experience ^
  logitechgaming ^
^
:: Utilities ^
  7zip.install ^
  autohotkey.install ^
  ccleaner ^
  sharex ^
  openhardwaremonitor ^
  cpu-z.install ^
^
:: Browsers ^
  googlechrome ^
  firefox ^
  firefox-dev --pre ^
^
:: Development Tools ^
  git.install ^
  nodejs.install ^
  vscode ^
  hyper ^
  charles4 ^
  postman ^
  REM unity ^
^
:: Media ^
  mpc-hc ^
  gimp ^
  imagemagick.app ^
^
:: Programing Languages ^
  python3 ^
  ruby ^
  golang.install ^
^
:: Games Launcher ^
  steam ^
  origin ^
  uplay ^
  REM  battle.net ^
  epicgameslauncher ^
^
:: Games ^
  REM leagueoflegends ^
  osu ^
  minecraft ^
^
:: Social ^
  discord.install ^

:: End