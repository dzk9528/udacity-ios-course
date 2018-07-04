# Learn Swift Programming Syntax
## 7.Protocols and Extensions
### Protocol Syntax
#### example1
    //Similar to interface in Java
    protocol Souschef {
        func chop(vegetable: String) -> String
        func rinse(vegetable: String) -> String
    }

    class Roommate: Souschef, Equatable {
        var hungry = true
        var name: String
        
        init(hungry: Bool, name: String) {
            self.hungry = hungry
            self.name = name
        }
        //*** must have realization of function in protocol
        func chop(vegetable: String) -> String {
            return "She's choppin' \(vegetable)!"
        }

        func rinse(vegetable: String) -> String {
            return "The \(vegetable) is so fresh and so clean"
        }
    }

    //*** operator is global function
    func ==(lhs: Roommate, rhs: Roommate) -> Bool {
        return lhs.name == rhs.name && lhs.hungry == rhs.hungry
    }

    var roomie = Roommate(hungry: true, name: "Jennifer")
    var theBestRoomie = Roommate(hungry: true, name: "Jennifer")

#### A protocol is also a type
    class DinnerCrew {
        var members: [Souschef]

        init(members: [Souschef]) {
            self.members = members
        }
    }

    class RandomPasserby: Souschef {
        var name: String
        
        init(name: String){
            self.name = name
        }

        func chop(vegetable: String) -> String {
            return "She's choppin' \(vegetable)!"
        }
        
        func rinse(vegetable: String) -> String {
            return "The \(vegetable) is so fresh and so clean"
        }
    }

    var newFriend = RandomPasserby(name: "Dave")

    //newFriend must have Souschef protocol
    var motleyDinnerCrew = DinnerCrew(members:[newFriend, roomie])
#### Extensions
    Extension UIview{
        ....
    }
Extensions add new functionality to an existing class, structure, enumeration, or protocol type. 