# Learn Swift Programming Syntax
## 2. Collection
### Array
#### Initialization
    var numbers = Array<Double>()

    var moreNumbers = [Double]()
    moreNumbers = [85.0, 90.0, 95.0]

    // Array literal syntax
    let differentNumbers = [97.5, 98.5, 99.0]

#### Array concatenation 
    moreNumbers = moreNumbers + differentNumbers

    // An array can hold any type of object.
    var circuit = [livingRoomSwitch, kitchenSwitch, bathroomSwitch]

#### Array operations: append, insert, remove, count, retrieve
    var roadTripMusic = ["Neil Young","Kendrick Lamar","Flo Rida", "Nirvana"]
    roadTripMusic.append("Rae Sremmurd")
    roadTripMusic.insert("Dej Loaf", at: 2)
    roadTripMusic.remove(at: 3)
    roadTripMusic.insert("Keith Urban", at: 3)
    roadTripMusic.count

    let musician = roadTripMusic[2]

### Dictionary
#### Initialization
    // Initializer syntax
    var groupsDict = [String:String]()

    // Dictionary literal
    var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions": "pride"]

    // Another example
    var averageLifeSpanDict = [String:CountableRange<Int>]()
    var lifeSpanDict = ["African Grey Parrot": 50...70, "Tiger Salamander": 12...15, "Bottlenose Dolphin": 20...30]

#### Dictionary operations: insert, remove, count, update, retrieve
    // Adding items to a dictionary
    animalGroupsDict["crows"] = "murder"

    // The count method is available to all collections.
    animalGroupsDict.count
    print(animalGroupsDict)

    // Removing items from a dictionary
    animalGroupsDict["crows"] = nil

    // Updating a value
    animalGroupsDict["monkeys"] = "barrel"
    var group = animalGroupsDict.updateValue("gaggle", forKey: "geese")
    type(of: group)

    animalGroupsDict.updateValue("crash", forKey:"rhinoceroses")
    print(animalGroupsDict)

    if let groupOfWhales = animalGroupsDict["whales"] {
        print("We saw a \(groupOfWhales) of whales from the boat.")
    } else {
        print("No value found for that key.")
    }

    // What happens if the key isn't found?
    if let groupOfSasquatches = animalGroupsDict["Sasquatches"] {
        print("We saw a \(groupOfSasquatches) of Sasquatches on our hike.")
    } else {
        print("No value found for that key.")
    }

### Set
#### Literal syntax
    var cutlery: Set = ["fork", "knife", "spoon"]
    var flowers:Set<Character> = ["🌷","🌹","🌸"]
#### Initializer syntax
    var utensils = Set<String>()
    var trees = Set<Character>()
#### Set operations: Insert, Remove, Count
    trees.insert("🌲")
    trees.insert("🌳")
    trees.insert("🌵")

    trees.remove("🌵")
    trees.count