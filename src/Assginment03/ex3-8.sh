
3-8
#!/bin/bash

# 파일 이름을 정의합니다.
DB_FILE="db.txt"

# 사용자에게 입력 모드를 선택하게 합니다.
read -p "Do you want to add to the existing database or rewrite it? (add/rewrite): " mode

# 사용자가 파일을 새로 작성하길 원한다면, 기존 db.txt 파일을 삭제합니다.
if [[ "$mode" == "rewrite" ]]; then
    > "$DB_FILE"
    echo "The database has been reset."
fi

# 사용자의 입력을 받아 파일에 추가합니다.
while true; do
    # 이름, 생일 또는 전화번호를 입력받습니다.
    read -p "Enter team member's name: " name
    read -p "Enter team member's birthday or phone number: " info

    # 입력받은 정보를 파일에 추가합니다.
    echo "$name, $info" >> "$DB_FILE"

    # 사용자가 더 추가할지 묻습니다.
    read -p "Do you want to add another team member? (yes/no): " add_more

    # 사용자가 더 이상 추가하지 않기를 원하면 루프를 종료합니다.
    if [[ "$add_more" != "yes" ]]; then
        break
    fi
done

echo "Team member information has been updated in $DB_FILE."

