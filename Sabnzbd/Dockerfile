FROM microsoft/windowsservercore
#FROM microsoft/nanoserver

MAINTAINER pminnebach

RUN powershell.exe -Command \
  $ErrorActionPreference = 'Stop'; \
  $ProgressPreference = 'SilentlyContinue'; \
  Invoke-WebRequest https://github.com/sabnzbd/sabnzbd/releases/download/2.3.0/SABnzbd-2.3.0-win64-bin.zip -OutFile c:\sabnzbd.zip ; \
  Expand-Archive -LiteralPath c:\sabnzbd.zip -DestinationPath c:\ ; \
  Remove-Item c:\sabnzbd.zip -Force

WORKDIR /SABnzbd-2.3.0

EXPOSE 8080 9090

CMD ["/SABnzbd-2.3.0/SABnzbd.exe", "--daemon", "--server 0.0.0.0", "--config-file c:\\config\\sabnzbd.ini"]
