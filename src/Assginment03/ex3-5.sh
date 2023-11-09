#!/bin/bash

# 내부 함수를 정의합니다.
list_directory_contents() {
    # 함수에 전달된 인자를 ls 명령어의 옵션으로 사용합니다.
    ls $1
}

# 스크립트에 전달된 첫 번째 인자를 내부 함수에 전달합니다.
# 예를 들어, -l 또는 -a 같은 옵션을 사용할 수 있습니다.
list_directory_contents $1

