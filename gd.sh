#!/bin/bash
echo "输入分享链接"
read -p "请输入:" link
link=${link#*id=};
link=${link#*folders/}
echo $link
link=${link#*d/}
link=${link%?usp*}
echo "输入目录名"
read -p "请输入:" dir
dir=${dir};
echo $dir
echo gclone copy  gc:{$link}  gc:{0AIH2GMtahzrcUk9PVA}'\'$dir  --ignore-existing --tpslimit 3 --transfers 3 --drive-chunk-size 32M --disable ListR --drive-acknowledge-abuse  --create-empty-src-dirs -v --progress --drive-server-side-across-configs
