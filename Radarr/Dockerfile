FROM microsoft/windowsservercore
#FROM microsoft/nanoserver

MAINTAINER pminnebach

# Install Git for Windows
RUN powershell.exe -Command \
    $ErrorActionPreference = 'Stop'; \
    $ProgressPreference = 'SilentlyContinue'; \
    Invoke-WebRequest https://github.com/Radarr/Radarr/releases/download/v0.2.0.870/Radarr.develop.0.2.0.870.windows.zip -OutFile c:\radarr.zip ; \
    Expand-Archive c:\radarr.zip -DestinationPath C:\ ; \
    Remove-Item -Path c:\radarr.zip -Force

WORKDIR /

COPY Entrypoint.ps1 /

EXPOSE 7878

CMD ["powershell.exe", "/Entrypoint.ps1"]
