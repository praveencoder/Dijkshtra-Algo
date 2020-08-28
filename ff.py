def fact(num):
	if num>=2:
		return num*fact(num-1)
	else:
		return 1
val=input("Enter number: ")
print "Factorial of ",val," is ",fact(val)
