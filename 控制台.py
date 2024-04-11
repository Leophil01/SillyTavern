import subprocess

def start_program():
    subprocess.Popen(["SillyTavern.lnk"], shell=True)

def start_service():
    subprocess.Popen(["Start.bat"], shell=True)

def stop_service():
    subprocess.Popen(["关闭服务.bat"], shell=True)

# 主程序
if __name__ == "__main__":
    while True:
        print("1. 启动程序")
        print("2. 启动服务")
        print("3. 关闭服务")
        print("4. 退出")

        choice = input("请选择操作: ")

        if choice == "1":
            start_program()
        elif choice == "2":
            start_service()
        elif choice == "3":
            stop_service()
        elif choice == "4":
            break
        else:
            print("无效的选择，请重新输入")
