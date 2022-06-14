#!/bin/sh
echo -n "维护结束时间："
read endtime
echo -n "联系方式："
read contact

sed -e "s/{time}/$endtime/g" ./errorpages/index.template.html | sed -e "s/{contact}/$contact/g" >> ./errorpages/index.html
echo "已输出 index.html 文件"
