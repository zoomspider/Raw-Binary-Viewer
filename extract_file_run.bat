@echo off
setlocal EnableDelayedExpansion

for %%f in (*) do (
    if /I not "%%~xf"==".bat" if /I not "%%~xf"==".py" (
        set "TARGET=%%f"
        goto :found
    )
)

echo No file found in folder.
pause
exit /b

:found
python viewer_program.py "%TARGET%"
pause