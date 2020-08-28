str="Praveen K is a great man"
i=0
char=word=0
while(str.charAt(i)!=NULL):
	if(str.charAt(i)!=" "):
		char+=1;
	else:
		word+=1;
print("Characters are: ",char,"Words are: ",word)
