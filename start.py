import os

for i in range(0, 30):
    os.system("sudo ./exec.sh " + str(27015+i) + " " + str(27115+i))