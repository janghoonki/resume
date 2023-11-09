#!/bin/bash

# 질문을 출력하고 사용자의 입력을 받습니다.
read -p "Is Linux fun? (y/n): " answer

# 입력받은 답변을 소문자로 변환합니다.
answer=$(echo $answer | tr '[:upper:]' '[:lower:]')

# case 문을 사용하여 입력 처리
case $answer in
  y)
    echo "You said yes!"
    ;;
  n)
    echo "You said no."
    ;;
  *)
    echo "Invalid input! Please answer 'y' or 'n'."
    ;;
esac

