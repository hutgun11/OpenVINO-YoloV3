curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1IrcnG5tE8MrJvT51fC8utv449sfwbSIQ" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1IrcnG5tE8MrJvT51fC8utv449sfwbSIQ" -o tiny-YoloV3FP16.tar.gz
tar -zxvf tiny-YoloV3FP16.tar.gz
rm tiny-YoloV3FP16.tar.gz
