#!/bin/bash

# 숫자와 연산자를 입력받습니다.
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter operator (+ or -): " operator

# 계산을 수행하고 결과를 출력합니다.
case $operator in
  +)
     result=$((num1 + num2))
     ;;
  -)
     result=$((num1 - num2))
     ;;
  *)
     echo "Invalid operator!"
     exit 1
     ;;
esac

echo "Result: $result"
#!/bin/bash

# 숫자와 연산자를 입력받습니다.
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter operator (+ or -): " operator

# 계산을 수행하고 결과를 출력합니다.
case $operator in
  +)
     result=$((num1 + num2))
     ;;
  -)
     result=$((num1 - num2))
     ;;
  *)
     echo "Invalid operator!"
     exit 1
     ;;
esac

echo "Result: $result"

