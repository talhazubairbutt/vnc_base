echo "Initializing process..."
export DISPLAY=:1.0 
FILE=/usercode/pid.txt
if test -f "$FILE"; then
    read -r PID<$FILE
    if ps -p $PID > /dev/null;then
          kill -9 $PID
    fi
fi
cd /usercode 
echo "Executing Program..." 
python3.8 HelloWorldTkinker.py&
echo $! >/usercode/pid.txt
