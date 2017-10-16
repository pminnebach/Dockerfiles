FROM microsoft/windowsservercore
#FROM microsoft/nanoserver

MAINTAINER pminnebach

# Install Git for Windows
RUN powershell.exe -Command \
    $ErrorActionPreference = 'Stop'; \
    $ProgressPreference = 'SilentlyContinue'; \
    Invoke-WebRequest https://github.com/git-for-windows/git/releases/download/v2.14.1.windows.1/Git-2.14.1-64-bit.exe -OutFile c:\git.exe ; \
    Start-Process c:\git.exe -ArgumentList '/VERYSILENT', '/NORESTART', '/COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh"' -Wait ; \
    Remove-Item c:\git.exe -Force

# Install Python
RUN powershell.exe -Command \
    $ErrorActionPreference = 'Stop'; \
    wget https://www.python.org/ftp/python/2.7.14/python-2.7.14.amd64.msi -OutFile c:\python.msi ; \
    Start-Process msiexec -ArgumentList '/i c:\python.msi', '/qn', 'ALLUSERS=1' -wait ; \
    Remove-Item c:\python.msi -Force

# Clone SickRage Repo
RUN git clone -b develop https://github.com/pymedusa/Medusa.git c:\Medusa

EXPOSE 8081

CMD ["/python27/python.exe", "/Medusa/SickBeard.py", "--datadir", "/config"]
