

# file path
路径 = input("Enter the file directory:")
# generic variable to check if path is available
标记 = False

# enable AI
启用AI = False


while not 标记:
    try:
        with open(路径,"r") as 文件:
            行 = 文件.readlines()
        if 行:
            print("File confirmed")
            标记 = True
    except Exception as e:
        路径 = input("Could not find the file... Try again: ")