# Learn Swift Programming Syntax
## 4. Function
### parameter: (var) name: datatype
### return -> datatype
    //make paramter var so that it can be changed.
    func appendA(var str: String)->String{
        str.append('A')
        return str
    }