#! /bin/bash

# Using substitution 

shopt -s expand_aliases # 이게 있어야 alias를 shell 안에서 수행 가능

# 대문자로 변수 만들고 `` backtik으로 쉘 결과를 저장
# echo 안에 $변수명 사용 가능
USERFILES=`find /home -user harry -type f 2>/dev/null`
echo "All Files Owned by USER: $USERFILES"

# alias 사용하면 alias 바로 설정 가능 ('' 또는 "" 사용)
alias TODAY='date'
A=`TODAY`

alias UFILES='find /home -user harry -type f 2>/dev/null'
B=`UFILES`

echo $A
echo $B