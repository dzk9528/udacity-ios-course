# Learn Swift Programming Syntax
## 8. Closures
closure functions, nested functions and closure expressions
### What is a closure expression?
closure expression - an unnamed, self contained block of code that can be passed as an argument to a function
### form
    //Closures typically take the form:
    { (parameters) -> return type **in**
         statements to execute
    }

#### sort 
    var birthYears = [2004, 2011, 2007, 2005, 2002]
    var youngestToOldest = birthYears.sorted(by: { (year1: Int, year2: Int) -> Bool in
        return year1 > year2
    })

#### filter
    //: Inferring closure expression type
    var grades = [81, 99, 54, 84, 98]
    var failingGrades = examGrades.filter({grade in
        return grade < 70
    })


