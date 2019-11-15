@echo off
if exist logfiles.log erase logfiles.log
REG ADD HKEY_CLASSES_ROOT\TypeLib\{8C38FE88-A599-4292-843C-8246BA41FF88}\1.0\0\win32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f
REG ADD HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{B6DD4549-4191-415E-A0AF-0B50434ABF39}\InprocServer32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f
REG ADD HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{4556AD24-A0A8-4D3B-95CD-B93FBDFD0DAD}\InprocServer32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f
REG ADD HKEY_CLASSES_ROOT\CLSID\{4556AD24-A0A8-4D3B-95CD-B93FBDFD0DAD}\InprocServer32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f
REG ADD HKEY_CLASSES_ROOT\CLSID\{E7E7DC0E-50B2-4869-8491-0E96AF274531}\InprocServer32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f
REG ADD HKEY_CLASSES_ROOT\CLSID\{555AB111-EABD-4F80-AEE8-E01BF2551970}\InprocServer32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f
REG ADD HKEY_CLASSES_ROOT\CLSID\{2FC86A70-8E1C-4CA3-A13F-D0F5E98C392F}\InprocServer32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f
REG ADD HKEY_CLASSES_ROOT\CLSID\{A49B4692-F945-474E-97EC-7F1DF4292E30}\InprocServer32 /ve /t REG_SZ /d "C:\Program Files (x86)\SBIS3SDK\Library\Sbis3SDK.dll" /f

if errorlevel 1 goto error
goto good
:error
echo SDK change registry parameter for SDK - error
echo SDK change registry parameter for SDK - error > logfiles.log
goto end
:good
echo change registry parameter for SDK - successfully
:end
@echo on
