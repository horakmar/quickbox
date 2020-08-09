; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

;#define VERSION "2.3.0-testing"
#define APP_NAME "QuickEvent"
#define APP_NAME_LOWER "quickevent"
#define COMPANY "win64"

#define QT_DIR "c:/Qt/5.15.0/mingw81_64"
;#define MINGW_DIR "C:\app\qt5.6\Tools\mingw492_32"
#define SSL_DIR "C:\qt\Tools\OpenSSL\Win_x64"
#define PSQL_DIR "C:\app\pgsql64"

#define INCLUDE_QT
#define BUILD_DIR ".."
#define SRC_DIR ".."

[Setup]
AppName={#APP_NAME}
AppVerName={#APP_NAME} {#VERSION}
AppPublisher=Fanda Vacek
AppPublisherURL=http://www.{#APP_NAME_LOWER}.cz
AppSupportURL=http://www.{#APP_NAME_LOWER}.cz
AppUpdatesURL=http://www.{#APP_NAME_LOWER}.cz
DefaultDirName=C:\{#APP_NAME}
DefaultGroupName={#APP_NAME}
OutputDir={#BUILD_DIR}\_inno\{#APP_NAME_LOWER}
#ifdef INCLUDE_QT
OutputBaseFilename={#APP_NAME_LOWER}-{#COMPANY}-{#VERSION}-setup
#else
OutputBaseFilename={#APP_NAME_LOWER}-{#COMPANY}-{#VERSION}-noqt-setup
#endif
;SetupIconFile=.\divers\quickevent\images\{#APP_NAME_LOWER}.ico
Compression=lzma
SolidCompression=yes

[Languages]
;Name: english; MessagesFile: compiler:Default.isl
;Name: czech; MessagesFile: compiler:Czech.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: {#BUILD_DIR}\bin\{#APP_NAME_LOWER}.exe; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\quickshow.exe; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\quickhttpd.exe; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\qsqlmon.exe; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\qfcore.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\qfqmlwidgets.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\quickeventcore.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\quickeventgui.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\*QEPlugin.dll; DestDir: {app}; Flags: ignoreversion
Source: {#BUILD_DIR}\bin\siut.dll; DestDir: {app}; Flags: ignoreversion

Source: {#BUILD_DIR}\bin\qml\*; DestDir: {app}\qml; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: "*.debug"
Source: {#SRC_DIR}\quickevent\app\quickevent\datafiles\*; DestDir: {app}\quickevent-data; Flags: ignoreversion recursesubdirs createallsubdirs

Source: {#BUILD_DIR}\bin\translations\*; DestDir: {app}\translations; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

Source: {#PSQL_DIR}\bin\libpq.dll; DestDir: {app}; Flags: ignoreversion
Source: {#PSQL_DIR}\bin\libintl-9.dll; DestDir: {app}; Flags: ignoreversion
Source: {#PSQL_DIR}\bin\libeay32.dll; DestDir: {app}; Flags: ignoreversion
Source: {#PSQL_DIR}\bin\ssleay32.dll; DestDir: {app}; Flags: ignoreversion
Source: {#PSQL_DIR}\bin\libiconv-2.dll; DestDir: {app}; Flags: ignoreversion

;Source: c:\app\openssl\*.dll; DestDir: {app}; Flags: ignoreversion

#ifdef INCLUDE_QT
Source: {#QT_DIR}\bin\Qt5Core.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Gui.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Widgets.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5XmlPatterns.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Network.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Sql.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Xml.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Qml.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Quick.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Svg.dll; DestDir: {app}; Flags: ignoreversion
;Source: {#QT_DIR}\bin\Qt5Script.dll; DestDir: {app}; Flags: ignoreversion
;Source: {#QT_DIR}\bin\Qt5ScriptTools.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5PrintSupport.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5SerialPort.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\Qt5Multimedia.dll; DestDir: {app}; Flags: ignoreversion

Source: {#QT_DIR}\plugins\platforms\qwindows.dll; DestDir: {app}\platforms; Flags: ignoreversion

Source: {#QT_DIR}\plugins\printsupport\windowsprintersupport.dll; DestDir: {app}\printsupport; Flags: ignoreversion

Source: {#QT_DIR}\plugins\audio\qtaudio_windows.dll; DestDir: {app}\audio; Flags: ignoreversion

Source: {#QT_DIR}\plugins\imageformats\qjpeg.dll; DestDir: {app}\imageformats; Flags: ignoreversion
Source: {#QT_DIR}\plugins\imageformats\qsvg.dll; DestDir: {app}\imageformats; Flags: ignoreversion

Source: {#QT_DIR}\plugins\sqldrivers\qsqlite.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion
Source: {#QT_DIR}\plugins\sqldrivers\qsqlpsql.dll; DestDir: {app}\sqldrivers; Flags: ignoreversion

;Source: {#QT_DIR}\qml\QtQml\*; DestDir: {app}\QtQml; Excludes: "*d.dll"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#QT_DIR}\qml\QtQuick\Window.2\*; DestDir: {app}\QtQuick\Window.2; Excludes: "*d.dll"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#QT_DIR}\qml\QtQuick\WidgetsPrivate\*; DestDir: {app}\QtQuick\WidgetsPrivate; Excludes: "*d.dll"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#QT_DIR}\qml\QtQuick.2\*; DestDir: {app}\QtQuick.2; Excludes: "*d.dll"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: {#SSL_DIR}\bin\libssl-1_1-x64.dll; DestDir: {app}; Flags: ignoreversion
Source: {#SSL_DIR}\bin\libcrypto-1_1-x64.dll; DestDir: {app}; Flags: ignoreversion

Source: {#QT_DIR}\bin\libgcc_s_seh-1.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\libwinpthread-1.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\libstdc++-6.dll; DestDir: {app}; Flags: ignoreversion
;Source: {#QT_DIR}\bin\icudt54.dll; DestDir: {app}; Flags: ignoreversion
;Source: {#QT_DIR}\bin\icuin54.dll; DestDir: {app}; Flags: ignoreversion
;Source: {#QT_DIR}\bin\icuuc54.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\libEGL.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\libGLESv2.dll; DestDir: {app}; Flags: ignoreversion
Source: {#QT_DIR}\bin\opengl32sw.dll; DestDir: {app}; Flags: ignoreversion

#endif

[Icons]
Name: {group}\{#APP_NAME}; Filename: {app}\{#APP_NAME_LOWER}.exe
Name: {group}\{cm:UninstallProgram,{#APP_NAME}}; Filename: {uninstallexe}
Name: {userdesktop}\{#APP_NAME}; Filename: {app}\{#APP_NAME_LOWER}.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#APP_NAME}; Filename: {app}\{#APP_NAME_LOWER}.exe; Tasks: quicklaunchicon

[Run]
Filename: {app}\{#APP_NAME_LOWER}.exe; Description: {cm:LaunchProgram,{#APP_NAME}}; Flags: nowait postinstall skipifsilent




































































