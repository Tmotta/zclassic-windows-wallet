[Setup]
; App info
AppVersion=1.0.0

OutputBaseFilename=zclassic-params_v{#SetupSetting("AppVersion")}

AppName=ZClassic Params
AppId=zclassic-params
AppMutex=zclassic-params
SetupMutex=zclassic-params,Global\zclassic-params
AppPublisher=Community
AppPublisherURL=http://www.zclassic.org

; Build
ArchitecturesAllowed=x64
Compression=lzma2/ultra
SolidCompression=yes

; Output file
OutputDir=installer
SetupIconFile=images\zcl-logo.ico

; Installation setup
DefaultDirName={pf64}\zclassic-params
DefaultGroupName=ZClassic
DisableProgramGroupPage=yes
DisableStartupPrompt=yes
DisableWelcomePage=yes
UninstallFilesDir={app}\uninst
PrivilegesRequired=none
DirExistsWarning=no

[Dirs]
Name: "{userappdata}/ZcashParams"; Flags: uninsneveruninstall; Permissions: everyone-full

[Files]
Source: "packages/.zcash-params/*"; DestDir: "{userappdata}/ZcashParams"; Flags: uninsneveruninstall onlyifdoesntexist; Permissions: everyone-full