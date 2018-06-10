with open('/tmp/name.txt') as f:
    myname = f.readline()
myname_array = myname.split(":")
print myname_array[1]
