
路径 = input("Enter the file directory:")
标记 = False

while not 标记:
    try:
        with open(路径,"r") as 文件:
            行 = 文件.readlines()
        if 行:
            print("File confirmed")
            标记 = True
    except Exception as e:
        路径 = input("Could not find the file... Try again: ")