# myObj.fn().myList[i].myVar
# • myList: list[A]=[A()] # Where A is a class
# • print(([1,2,3])[1]) # prints `2'
# • myFunc([1,2,3], "abc", 1+2, B()) # myFunc(list[int], string, int, B
class bar():
    def __init__(self, val : str):
        self.myVar:str=val

class foo():
    def __init__(self):
        self.myList:list[bar]=[bar("str0"), bar("str1"), bar("str2")]

class myClass():
    def __init__(self):
        self.x:int=2
    def fn(self)->foo:
        return foo()

def main():
    myObj: myClass=myClass()
    i:int=1
    print(myObj.fn().myList[1].myVar)
    print(([1,2,3])[1])
    

if __name__=="__main__":
    main()
