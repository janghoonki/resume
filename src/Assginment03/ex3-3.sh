#!/bin/bash

# 사용자로부터 키와 체중을 입력받습니다.
read -p "Enter your height in meters (e.g., 1.75): " height
read -p "Enter your weight in kilograms (e.g., 75): " weight

# Bash에서 소수 계산을 직접 처리하기 어렵기 때문에,
# 키의 제곱을 계산하기 위해 100을 곱한 정수로 변환합니다.
height_cm=$(echo "$height * 100" | awk '{printf "%d\n", $1}')
weight_kg=$(echo "$weight" | awk '{printf "%d\n", $1}')

# BMI 계산
# BMI = (체중(kg) / 키(m)의 제곱) * 10000
# 키는 cm로 변환되었기 때문에, 10000을 곱하는 것으로 제곱을 보정합니다.
bmi=$(( (weight_kg * 10000) / (height_cm * height_cm) ))

# BMI 값에 따라 결과 메시지를 결정합니다.
if [ $bmi -lt 185 ]; then
    status="Underweight"
elif [ $bmi -ge 185 ] && [ $bmi -le 230 ]; then
    status="Normal weight"
else
    status="Overweight"
fi

# 결과 출력
echo "Your BMI is: $bmi"
echo "You are: $status"


