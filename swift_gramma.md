## swift gramma (Swift for Beginners)
### data types
##### Int, Float, Double, Bool
##### String, Character
##### <br>
### variable and constant
##### variable: var b : Int = 5
##### constant: let a = 5
##### change: b = 7
##### <br>
### String
#### initialization
    let stringWithPotential = String()
##### .characters -- characters in string
##### .character.count -- length of string
##### .characters.reversed() -- get reversed character
##### .unicodeScalars -- universal system for representing text 
    U+1F419 for “OCTOPUS” (🐙)
    U+004A for “LATIN CAPITAL LETTER J” (J)
##### .contain(string) -- check contain another string
##### .replacingOccurrences(of: org_str  with:new_str)

#### String interpolation
##### \\(variableName)
    var name = "Kate"
    var customizedBirthdayCheer = "Happy Birthday, \(name)!"
    print(customizedBirthdayCheer)
##### <br>
### If statement
#### operator
##### &&, ||, !, >=, <=, ==
    if(condition){
        do something
    }
    else{
        do something
    }
##### <br>
### function
    //define function
    func nameOfFunction(para: datatype, ...) {
        // body of function goes here
    }

    //calling function
    let arg = (val of datatype)
    nameOfFunction(para: arg, ...)

    //function with return
    func nameOfFunction(/* parameters */) -> Type {
        var valueToReturn: Type
        // Rest of function
        return valueToReturn
    }

    //default parameter
    func calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double = 0.15) -> Double {
        return priceOfMeal + (priceOfMeal * tipPercentage)
    }




