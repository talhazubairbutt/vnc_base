echo "Initializing process..." && export DISPLAY=:1.0 && cd /usercode && rm -f *.class && (pkill java || true) && echo "Compiling..." && javac HelloWorldSwing.java && echo "Executing Program..." && java -Dsun.java2d.xrender=false HelloWorldSwing

