# Learn Swift Programming Syntax
## 6. Enums And Struct
### Enums
    enum Planet (: datatype) {
        case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    }

    //switch 
    var thisPlanet = Planet.mercury
    switch thisPlanet{
        case .mercury:
            ...
        case .venus:
            ...
        case .earth:
            ...
        case .mars:
            ...
        case .jupiter:
            ...
        case .saturn:
            ...
        case .uranus:
            ...
        case .neptune:
            ...
    }

### Struct
    struct struct_name {
        var v1: datatype
        static func f1(){

        }
    }

    var v2 = struct_name(v1: val)
    v2.f1()
### Difference between Struct & Class
* Struct and Enums are Value Types
* class are reference Types