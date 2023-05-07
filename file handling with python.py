
# opening the file
file1 = open('file1.txt', 'r')

# creating another file to store odd lines
file2 = open('file2.txt', 'w')

# reading content of the files
# and writing odd lines to another file
lines = file1.readlines()
type(lines)
for i in range(0, len(lines)):
	if(i % 2 != 0):
		file2.write(lines[i])

# closing the files
file1.close()
file2.close()


F=open("file1.txt","r")

count=0
                   # loop counts the number of lines in file1
while(True):
    b=F.read(1)
    if(b=='\n'):
        count+=1
    if(b==""):
        break

F.close()


# opening the files and printing their content
file1 = open('file1.txt', 'r')
file2 = open('file2.txt', 'r')

# reading and printing the files content
str1 = file1.read()
str2 = file2.read()

print("file1 content...")
print(str1)

print() # to print new line

print("file2 content...")
print(str2)

# closing the files
file1.close()
file2.close()

if(count % 2 != 0):
	print("Number of lines odd, content copied into file2 ")
