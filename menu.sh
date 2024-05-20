#!/bin/bash

while true; do
    echo "请选择一个选项："
    echo "1) 查看Linux版本"
    echo "2) 查看剩余空间"
    echo "3) 查看显卡状态"
    echo "4) 退出"

    read -p "请输入选项 [1-4]: " choice

    case $choice in
        1)
            echo "查看Linux版本："
            cat /etc/os-release
            ;;
        2)
            echo "查看剩余空间："
            df -h
            ;;
        3)
            echo "查看显卡状态："
            nvidia-smi
            ;;
        4)
            echo "退出程序"
            break
            ;;
        *)
            echo "无效选项，请重新选择"
            ;;
    esac
    echo ""
done
