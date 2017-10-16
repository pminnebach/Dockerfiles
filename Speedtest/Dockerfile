FROM python:3-windowsservercore
#FROM microsoft/nanoserver

MAINTAINER pminnebach

# Change the shell to PowerShell
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN pip3 install speedtest-cli

WORKDIR /

COPY speedtest.ps1 /

CMD ["PowerShell.exe","/speedtest.ps1"]
