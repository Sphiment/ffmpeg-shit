mkdir exported
@echo off
echo hi > log.txt
for %%i in (*.mp4) do (
    set counter=0
    echo Combining video: %counter%%%i
    set /a counter=%counter%+1
    echo file %%i > %%i.txt
    echo file Outro.mp4 >> %%i.txt
    ffmpeg -safe 0 -f concat -i "%%i.txt" -c copy "exported\I_%counter%%%i" 2>> log.txt
    del %%i.txt
	echo %counter%%%i is done!
	cls
)
echo task finished!
pause