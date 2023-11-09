#!/bin/bash

# 폴더 이름을 입력받습니다.
read -p "Enter the directory name: " base_dir

# 입력받은 이름으로 폴더가 없으면 생성합니다.
if [ ! -d "$base_dir" ]; then
    mkdir "$base_dir"
fi

# 폴더 내에 5개 이상의 파일을 생성합니다.
for i in {1..5}; do
    touch "${base_dir}/file${i}.txt"
done

# 생성된 각 파일에 대하여 하위 폴더를 생성하고 심볼릭 링크를 만듭니다.
for file in "${base_dir}"/*; do
    if [ -f "$file" ]; then
        # 파일 이름으로 폴더 이름을 생성합니다.
        dir_name="${file%.*}_dir"
        mkdir "$dir_name"
        
        # 원본 파일의 절대 경로를 얻습니다.
        full_file_path=$(realpath "$file")
        
        # 하위 폴더에 심볼릭 링크를 생성합니다.
        ln -s "$full_file_path" "${dir_name}/"
    fi
done

echo "Folders have been created and symbolic links have been established."

