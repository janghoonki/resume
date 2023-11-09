
#!/bin/bash

# 폴더 이름을 입력받습니다.
read -p "Enter the directory name: " dir_name

# 폴더가 없으면 생성합니다.
if [ ! -d "$dir_name" ]; then
    mkdir "$dir_name"
fi

# 폴더 안에 5개의 파일을 생성합니다.
for i in {1..5}; do
    touch "${dir_name}/file${i}.txt"
done

# 파일들을 압축합니다.
tar -czf "${dir_name}.tar.gz" -C "$dir_name" .

# 새로운 폴더를 생성합니다.
new_dir_name="${dir_name}_uncompressed"
mkdir "$new_dir_name"

# 압축 해제합니다.
tar -xzf "${dir_name}.tar.gz" -C "$new_dir_name"

echo "The directory and files have been created, compressed, and uncompressed successfully."

