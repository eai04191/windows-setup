:: Install Chocolatey
powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"


:: Reload PATH
"%ALLUSERSPROFILE%\chocolatey\bin\RefreshEnv.cmd"


:: Install Apprications with Chocolatey

:: Drivers
choco install -y ^
  directx ^
  geforce-game-ready-driver ^
  geforce-experience ^
  logitechgaming

:: Utilities
choco install -y ^
  7zip.install ^
  autohotkey.install ^
  ccleaner ^
  sharex ^
  openhardwaremonitor ^
  cpu-z.install ^
  f.lux.install ^
  manictime.install ^
  teamviewer

:: Cloud Drives
choco install -y ^
  google-backup-and-sync ^
  dropbox ^
  megasync

:: Browsers
choco install -y ^
  googlechrome ^
  firefox ^
  firefox-dev --pre

:: Development Tools
choco install -y ^
  git.install ^
  nodejs.install ^
  vscode ^
  winmerge ^
  hyper ^
  charles4 ^
  postman
  REM unity

:: Media
choco install -y ^
  mpc-hc ^
  gimp ^
  imagemagick.app ^
  youtube-dl ^
  ffmpeg ^
  skyfonts ^
  mp3tag

:: Programing Languages
choco install -y ^
  python3 ^
  ruby ^
  golang.install

:: Games Launcher
choco install -y ^
  steam ^
  origin ^
  uplay ^
  epicgameslauncher
  REM  battle.net

:: Games
choco install -y ^
  osu ^
  minecraft
  REM leagueoflegends

:: Social
choco install -y ^
  discord.install


:: Reload PATH
"%ALLUSERSPROFILE%\chocolatey\bin\RefreshEnv.cmd"


:: Install Matsuya
gem install matsuya


:: Install Hyper-V, WSL
DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V /NoRestart
DISM /Online /Enable-Feature /FeatureName:Microsoft-Windows-Subsystem-Linux /NoRestart


:: Show Install Error
find "ERROR" "%ALLUSERSPROFILE%\chocolatey\logs\chocolatey.log"

pause
