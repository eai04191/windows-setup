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
  teamviewer ^
  sizer

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
  gitkraken ^
  winmerge ^
  hyper ^
  charles4 ^
  postman
  REM unity

:: Media
choco install -y ^
  ffmpeg ^
  youtube-dl ^
  imagemagick.app ^
  mpc-hc ^
  gimp ^
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


:: ここから絶対いる

:: 松屋
gem install matsuya

:: スナックのママ
gem install snacknomama

:: 性風俗
go get -u github.com/YuheiNakasaka/sayhuuzoku

:: posh-cowsay
mkdir "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\cowsay"
curl https://raw.githubusercontent.com/kanej/posh-cowsay/master/cowsay.psm1 -o "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\cowsay\cowsay.psm1"
powershell -command "Import-Module cowsay"

:: ここまで絶対いる


:: Install Hyper-V, WSL
DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V /NoRestart
DISM /Online /Enable-Feature /FeatureName:Microsoft-Windows-Subsystem-Linux /NoRestart


:: Show Install Error
find "ERROR" "%ALLUSERSPROFILE%\chocolatey\logs\chocolatey.log"

pause
