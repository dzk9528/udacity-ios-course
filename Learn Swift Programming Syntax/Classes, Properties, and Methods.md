# Learn Swift Programming Syntax
## 5. Classes, Properties, and Methods
### Class Example
    class c1{
        let cons_val = val1
        var v1 : type
        //constructor
        init(var v1: type){
            //use self. to visit member of class
            self.v1 = v1
        }
        func f(...)...{
            ...
        }
    }
### Access Control
| level | class | App/Framework | World |
| :---: | :---: | :-----------: | :---: |
| public | Y | Y | Y |
| interval | Y | Y | N |
| private | Y | N | N |

### Get method
    class c2{
        //in the class
        var c2Var : datatype{
            get{
                let val = .....
                return val
            }
        }
    }
    //call the class's variable outside
    var v1 = c2.c2Var


