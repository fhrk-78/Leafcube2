chcp 65001
if not exist bin (
    mkdir bin
)
if not exist out (
    mkdir out
)
make
rem For Shellscript Automator