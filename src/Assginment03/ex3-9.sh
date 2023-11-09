#!/bin/bash

# db.txt 파일 경로를 지정합니다.
DB_FILE="db.txt"

# 사용자로부터 검색할 팀원의 이름을 입력받습니다.
read -p "Enter the name of the team member to search: " search_name

# 파일에서 이름을 검색하고 해당하는 라인을 출력합니다.
# grep 명령어의 -i 옵션은 대소문자를 구분하지 않고 검색하며,
# -w 옵션은 단어 단위로 일치하는 것만 찾습니다.
result=$(grep -i -w "$search_name" "$DB_FILE")

# 결과에 따라 메시지를 출력합니다.
if [ -z "$result" ]; then
    echo "No team member found with the name: $search_name"
else
    echo "Information for $search_name:"
    echo "$result"
fi

