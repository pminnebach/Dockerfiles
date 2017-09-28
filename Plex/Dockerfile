FROM microsoft/windowsservercore
#FROM microsoft/nanoserver

MAINTAINER pminnebach

RUN powershell.exe -Command \
  $ErrorActionPreference = 'Stop'; \
  $ProgressPreference = 'SilentlyContinue'; \
  Install-WindowsFeature -Name Server-Media-Foundation ; \
  Invoke-WebRequest https://downloads.plex.tv/plex-media-server/1.9.2.4285-9f65b88ae/Plex-Media-Server-1.9.2.4285-9f65b88ae.exe -OutFile c:\plex.exe ; \
  Start-Process c:\plex.exe -ArgumentList '/install', '/quiet', '/norestart', '/log c:\plexlog.txt' -Wait ; \
  Remove-Item c:\plex.exe -Force

RUN powershell.exe -Command \
  $ErrorActionPreference = 'Stop'; \
  $ProgressPreference = 'SilentlyContinue'; \
  Invoke-WebRequest https://github.com/cjmurph/PmsService/releases/download/v1.1.2/PlexService_1.1.2.msi -OutFile c:\pmss.msi ; \
  Start-Process c:\pmss.msi -ArgumentList 'SERVICE_USERNAME="NT AUTHORITY\SYSTEM"', '/quiet', '/log c:\pmsslog.txt' -Wait ; \
  Remove-Item c:\pmss.msi -Force

EXPOSE 32400/tcp 3005/tcp 8324/tcp 32469/tcp 1900/udp 32410/udp 32412/udp 32413/udp 32414/udp

#CMD ["command","parameter"]
